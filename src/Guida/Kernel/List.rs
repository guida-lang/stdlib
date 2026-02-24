/*

import Guida.Kernel.Utils exposing (cmp)
import Basics exposing (EQ, LT)

*/


use crate::utils::Order;

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum List<T> {
    Nil,
    Cons(T, Box<List<T>>),
}

impl<T> Default for List<T> {
    fn default() -> Self {
        Self::Nil
    }
}

impl<T> List<T> {
    pub fn cons(head: T, tail: List<T>) -> Self {
        Self::Cons(head, Box::new(tail))
    }

    pub fn is_empty(&self) -> bool {
        matches!(self, Self::Nil)
    }

    pub fn from_vec(mut values: Vec<T>) -> Self {
        let mut out = List::Nil;
        while let Some(value) = values.pop() {
            out = List::Cons(value, Box::new(out));
        }
        out
    }

    pub fn to_vec(&self) -> Vec<T>
    where
        T: Clone,
    {
        let mut out = Vec::new();
        let mut cursor = self;
        while let List::Cons(head, tail) = cursor {
            out.push(head.clone());
            cursor = tail;
        }
        out
    }

    pub fn append(self, right: List<T>) -> List<T>
    where
        T: Clone,
    {
        let mut values = self.to_vec();
        values.extend(right.to_vec());
        List::from_vec(values)
    }
}

pub fn map2<A, B, C, F>(func: F, xs: &List<A>, ys: &List<B>) -> List<C>
where
    F: Fn(&A, &B) -> C,
{
    let mut out = Vec::new();
    let mut left = xs;
    let mut right = ys;

    while let (List::Cons(a, at), List::Cons(b, bt)) = (left, right) {
        out.push(func(a, b));
        left = at;
        right = bt;
    }

    List::from_vec(out)
}

pub fn map3<A, B, C, D, F>(func: F, xs: &List<A>, ys: &List<B>, zs: &List<C>) -> List<D>
where
    F: Fn(&A, &B, &C) -> D,
{
    let mut out = Vec::new();
    let mut xa = xs;
    let mut ya = ys;
    let mut za = zs;

    while let (List::Cons(a, at), List::Cons(b, bt), List::Cons(c, ct)) = (xa, ya, za) {
        out.push(func(a, b, c));
        xa = at;
        ya = bt;
        za = ct;
    }

    List::from_vec(out)
}

pub fn map4<A, B, C, D, E, F>(func: F, ws: &List<A>, xs: &List<B>, ys: &List<C>, zs: &List<D>) -> List<E>
where
    F: Fn(&A, &B, &C, &D) -> E,
{
    let mut out = Vec::new();
    let mut wa = ws;
    let mut xa = xs;
    let mut ya = ys;
    let mut za = zs;

    while let (List::Cons(a, at), List::Cons(b, bt), List::Cons(c, ct), List::Cons(d, dt)) = (wa, xa, ya, za)
    {
        out.push(func(a, b, c, d));
        wa = at;
        xa = bt;
        ya = ct;
        za = dt;
    }

    List::from_vec(out)
}

pub fn map5<A, B, C, D, E, R, F>(func: F, vs: &List<A>, ws: &List<B>, xs: &List<C>, ys: &List<D>, zs: &List<E>) -> List<R>
where
    F: Fn(&A, &B, &C, &D, &E) -> R,
{
    let mut out = Vec::new();
    let mut va = vs;
    let mut wa = ws;
    let mut xa = xs;
    let mut ya = ys;
    let mut za = zs;

    while let (
        List::Cons(a, at),
        List::Cons(b, bt),
        List::Cons(c, ct),
        List::Cons(d, dt),
        List::Cons(e, et),
    ) = (va, wa, xa, ya, za)
    {
        out.push(func(a, b, c, d, e));
        va = at;
        wa = bt;
        xa = ct;
        ya = dt;
        za = et;
    }

    List::from_vec(out)
}

pub fn sort_by<T, K, F>(func: F, xs: &List<T>) -> List<T>
where
    T: Clone,
    K: Ord,
    F: Fn(&T) -> K,
{
    let mut values = xs.to_vec();
    values.sort_by_key(|v| func(v));
    List::from_vec(values)
}

pub fn sort_with<T, F>(func: F, xs: &List<T>) -> List<T>
where
    T: Clone,
    F: Fn(&T, &T) -> Order,
{
    let mut values = xs.to_vec();
    values.sort_by(|a, b| func(a, b).into());
    List::from_vec(values)
}
