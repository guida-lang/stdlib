/*

import Guida.Kernel.Utils exposing (Tuple2)

*/


use crate::list::List;

fn _JsArray_empty<T>() -> Vec<T> {
    Vec::new()
}

fn _JsArray_singleton<T>(value: T) -> Vec<T> {
    vec![value]
}

fn _JsArray_length<T>(array: &[T]) -> usize {
    array.len()
}

fn _JsArray_initialize<T, F>(size: usize, offset: usize, func: F) -> Vec<T>
where
    F: Fn(usize) -> T,
{
    (0..size).map(|i| func(offset + i)).collect()
}

fn _JsArray_initializeFromList<T: Clone>(max: usize, list: &List<T>) -> (Vec<T>, List<T>) {
    let mut out = Vec::with_capacity(max);
    let mut cursor = list;

    for _ in 0..max {
        match cursor {
            List::Nil => break,
            List::Cons(head, tail) => {
                out.push(head.clone());
                cursor = tail;
            }
        }
    }

    (out, cursor.clone())
}

fn _JsArray_unsafeGet<T: Clone>(index: usize, array: &[T]) -> T {
    array[index].clone()
}

fn _JsArray_unsafeSet<T: Clone>(index: usize, value: T, array: &[T]) -> Vec<T> {
    let mut out = array.to_vec();
    out[index] = value;
    out
}

fn _JsArray_push<T: Clone>(value: T, array: &[T]) -> Vec<T> {
    let mut out = array.to_vec();
    out.push(value);
    out
}

fn _JsArray_foldl<T, A, F>(func: F, mut acc: A, array: &[T]) -> A
where
    F: Fn(&T, A) -> A,
{
    for item in array {
        acc = func(item, acc);
    }
    acc
}

fn _JsArray_foldr<T, A, F>(func: F, mut acc: A, array: &[T]) -> A
where
    F: Fn(&T, A) -> A,
{
    for item in array.iter().rev() {
        acc = func(item, acc);
    }
    acc
}

fn _JsArray_map<T, U, F>(func: F, array: &[T]) -> Vec<U>
where
    F: Fn(&T) -> U,
{
    array.iter().map(func).collect()
}

fn _JsArray_indexedMap<T, U, F>(func: F, offset: usize, array: &[T]) -> Vec<U>
where
    F: Fn(usize, &T) -> U,
{
    array
        .iter()
        .enumerate()
        .map(|(i, item)| func(offset + i, item))
        .collect()
}

fn _JsArray_slice<T: Clone>(from: usize, to: usize, array: &[T]) -> Vec<T> {
    array[from.min(array.len())..to.min(array.len())].to_vec()
}

fn _JsArray_appendN<T: Clone>(n: usize, dest: &[T], source: &[T]) -> Vec<T> {
    let mut out = dest.to_vec();
    let items_to_copy = n.saturating_sub(dest.len()).min(source.len());
    out.extend(source.iter().take(items_to_copy).cloned());
    out
}
