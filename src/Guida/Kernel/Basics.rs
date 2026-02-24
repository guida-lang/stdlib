/*

import Guida.Kernel.Debug exposing (crash)

*/


// MATH

fn _Basics_add(a: f64, b: f64) -> f64 {
    a + b
}

fn _Basics_sub(a: f64, b: f64) -> f64 {
    a - b
}

fn _Basics_mul(a: f64, b: f64) -> f64 {
    a * b
}

fn _Basics_fdiv(a: f64, b: f64) -> f64 {
    a / b
}

fn _Basics_idiv(a: i64, b: i64) -> i64 {
    a / b
}

fn _Basics_pow(a: f64, b: f64) -> f64 {
    a.powf(b)
}

fn _Basics_remainderBy(modulus: i64, x: i64) -> i64 {
    x % modulus
}

fn _Basics_modBy(modulus: i64, x: i64) -> i64 {
    if modulus == 0 {
        panic!("modulus cannot be zero")
    }

    let answer = x % modulus;
    if (answer > 0 && modulus < 0) || (answer < 0 && modulus > 0) {
        answer + modulus
    } else {
        answer
    }
}


// TRIGONOMETRY

const _Basics_pi: f64 = std::f64::consts::PI;
const _Basics_e: f64 = std::f64::consts::E;

fn _Basics_cos(v: f64) -> f64 {
    v.cos()
}

fn _Basics_sin(v: f64) -> f64 {
    v.sin()
}

fn _Basics_tan(v: f64) -> f64 {
    v.tan()
}

fn _Basics_acos(v: f64) -> f64 {
    v.acos()
}

fn _Basics_asin(v: f64) -> f64 {
    v.asin()
}

fn _Basics_atan(v: f64) -> f64 {
    v.atan()
}

fn _Basics_atan2(y: f64, x: f64) -> f64 {
    y.atan2(x)
}


// MORE MATH

fn _Basics_toFloat(x: i64) -> f64 {
    x as f64
}

fn _Basics_truncate(n: f64) -> i64 {
    n as i64
}

fn _Basics_isInfinite(n: f64) -> bool {
    n.is_infinite()
}

fn _Basics_ceiling(v: f64) -> f64 {
    v.ceil()
}

fn _Basics_floor(v: f64) -> f64 {
    v.floor()
}

fn _Basics_round(v: f64) -> f64 {
    v.round()
}

fn _Basics_sqrt(v: f64) -> f64 {
    v.sqrt()
}

fn _Basics_log(v: f64) -> f64 {
    v.ln()
}

fn _Basics_isNaN(v: f64) -> bool {
    v.is_nan()
}


// BOOLEANS

fn _Basics_not(value: bool) -> bool {
    !value
}

fn _Basics_and(a: bool, b: bool) -> bool {
    a && b
}

fn _Basics_or(a: bool, b: bool) -> bool {
    a || b
}

fn _Basics_xor(a: bool, b: bool) -> bool {
    a != b
}
