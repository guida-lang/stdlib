/*

import Array exposing (toList)
import Basics exposing (LT, EQ, GT)
import Dict exposing (toList)
import Guida.Kernel.Debug exposing (crash)
import Guida.Kernel.List exposing (Cons, Nil)
import Set exposing (toList)

*/


use std::cmp::Ordering;

use crate::list::List;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Order {
    Lt,
    Eq,
    Gt,
}

impl From<Order> for Ordering {
    fn from(value: Order) -> Self {
        match value {
            Order::Lt => Ordering::Less,
            Order::Eq => Ordering::Equal,
            Order::Gt => Ordering::Greater,
        }
    }
}

pub fn equal<T: PartialEq>(a: &T, b: &T) -> bool {
    a == b
}

pub fn not_equal<T: PartialEq>(a: &T, b: &T) -> bool {
    a != b
}

pub fn lt<T: PartialOrd>(a: &T, b: &T) -> bool {
    a < b
}

pub fn le<T: PartialOrd>(a: &T, b: &T) -> bool {
    a <= b
}

pub fn gt<T: PartialOrd>(a: &T, b: &T) -> bool {
    a > b
}

pub fn ge<T: PartialOrd>(a: &T, b: &T) -> bool {
    a >= b
}

pub fn compare<T: PartialOrd>(a: &T, b: &T) -> Order {
    if a < b {
        Order::Lt
    } else if a > b {
        Order::Gt
    } else {
        Order::Eq
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Tuple2<A, B>(pub A, pub B);

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Tuple3<A, B, C>(pub A, pub B, pub C);

pub fn chr(c: char) -> char {
    c
}

pub fn append_string(left: &str, right: &str) -> String {
    let mut out = String::with_capacity(left.len() + right.len());
    out.push_str(left);
    out.push_str(right);
    out
}

pub fn append_list<T: Clone>(left: &List<T>, right: &List<T>) -> List<T> {
    left.clone().append(right.clone())
}
