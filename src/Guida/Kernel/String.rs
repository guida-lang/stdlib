/*

import Guida.Kernel.List exposing (fromArray, toArray, Nil)
import Guida.Kernel.Utils exposing (chr, Tuple2)
import Maybe exposing (Just, Nothing)

*/


use crate::list::List;

pub fn cons(ch: char, text: &str) -> String {
    let mut out = String::with_capacity(ch.len_utf8() + text.len());
    out.push(ch);
    out.push_str(text);
    out
}

pub fn uncons(text: &str) -> Option<(char, String)> {
    let mut chars = text.chars();
    let first = chars.next()?;
    Some((first, chars.collect()))
}

pub fn append(a: &str, b: &str) -> String {
    let mut out = String::with_capacity(a.len() + b.len());
    out.push_str(a);
    out.push_str(b);
    out
}

pub fn length(text: &str) -> usize {
    text.chars().count()
}

pub fn map<F>(func: F, text: &str) -> String
where
    F: Fn(char) -> char,
{
    text.chars().map(func).collect()
}

pub fn filter<F>(predicate: F, text: &str) -> String
where
    F: Fn(char) -> bool,
{
    text.chars().filter(|c| predicate(*c)).collect()
}

pub fn reverse(text: &str) -> String {
    text.chars().rev().collect()
}

pub fn foldl<F, S>(func: F, mut state: S, text: &str) -> S
where
    F: Fn(char, S) -> S,
{
    for ch in text.chars() {
        state = func(ch, state);
    }
    state
}

pub fn foldr<F, S>(func: F, mut state: S, text: &str) -> S
where
    F: Fn(char, S) -> S,
{
    for ch in text.chars().rev() {
        state = func(ch, state);
    }
    state
}

pub fn split(sep: &str, text: &str) -> Vec<String> {
    text.split(sep).map(ToOwned::to_owned).collect()
}

pub fn join(sep: &str, parts: &[String]) -> String {
    parts.join(sep)
}

pub fn slice(start: isize, end: isize, text: &str) -> String {
    let chars: Vec<char> = text.chars().collect();
    let len = chars.len() as isize;

    let normalize = |value: isize| {
        if value < 0 {
            (len + value).max(0)
        } else {
            value.min(len)
        }
    };

    let from = normalize(start) as usize;
    let to = normalize(end) as usize;

    if from >= to {
        String::new()
    } else {
        chars[from..to].iter().collect()
    }
}

pub fn trim(text: &str) -> String {
    text.trim().to_owned()
}

pub fn trim_left(text: &str) -> String {
    text.trim_start().to_owned()
}

pub fn trim_right(text: &str) -> String {
    text.trim_end().to_owned()
}

pub fn words(text: &str) -> List<String> {
    let words: Vec<String> = text
        .split_whitespace()
        .map(ToOwned::to_owned)
        .collect();
    List::from_vec(words)
}

pub fn lines(text: &str) -> List<String> {
    List::from_vec(text.lines().map(ToOwned::to_owned).collect())
}

pub fn to_upper(text: &str) -> String {
    text.to_uppercase()
}

pub fn to_lower(text: &str) -> String {
    text.to_lowercase()
}

pub fn any<F>(predicate: F, text: &str) -> bool
where
    F: Fn(char) -> bool,
{
    text.chars().any(predicate)
}

pub fn all<F>(predicate: F, text: &str) -> bool
where
    F: Fn(char) -> bool,
{
    text.chars().all(predicate)
}

pub fn contains(sub: &str, text: &str) -> bool {
    text.contains(sub)
}

pub fn starts_with(sub: &str, text: &str) -> bool {
    text.starts_with(sub)
}

pub fn ends_with(sub: &str, text: &str) -> bool {
    text.ends_with(sub)
}

pub fn indexes(sub: &str, text: &str) -> List<usize> {
    if sub.is_empty() {
        return List::Nil;
    }

    let mut positions = Vec::new();
    let mut offset = 0;
    while let Some(index) = text[offset..].find(sub) {
        let absolute = offset + index;
        let char_index = text[..absolute].chars().count();
        positions.push(char_index);
        offset = absolute + sub.len();
        if offset > text.len() {
            break;
        }
    }

    List::from_vec(positions)
}

pub fn from_number<T: ToString>(number: T) -> String {
    number.to_string()
}

pub fn to_int(text: &str) -> Option<i64> {
    if text.is_empty() {
        return None;
    }

    let mut chars = text.chars();
    let first = chars.next()?;
    let rest: String = chars.collect();

    if (first == '+' || first == '-') && rest.is_empty() {
        return None;
    }

    if !(first.is_ascii_digit() || first == '+' || first == '-') {
        return None;
    }

    if !rest.chars().all(|ch| ch.is_ascii_digit()) {
        return None;
    }

    text.parse::<i64>().ok()
}

pub fn to_float(text: &str) -> Option<f64> {
    if text.is_empty() || text.contains('x') || text.contains('o') || text.contains('b') || text.chars().any(char::is_whitespace) {
        return None;
    }

    text.parse::<f64>().ok()
}

pub fn from_list(chars: &List<char>) -> String {
    chars.to_vec().into_iter().collect()
}
