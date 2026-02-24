/*

import Guida.Kernel.Utils exposing (chr)

*/


fn _Char_toCode(ch: char) -> u32 {
    ch as u32
}

fn _Char_fromCode(code: i64) -> char {
    if !(0..=0x10FFFF).contains(&code) {
        '\u{FFFD}'
    } else {
        char::from_u32(code as u32).unwrap_or('\u{FFFD}')
    }
}

fn _Char_toUpper(ch: char) -> char {
    ch.to_uppercase().next().unwrap_or(ch)
}

fn _Char_toLower(ch: char) -> char {
    ch.to_lowercase().next().unwrap_or(ch)
}

fn _Char_toLocaleUpper(ch: char) -> char {
    _Char_toUpper(ch)
}

fn _Char_toLocaleLower(ch: char) -> char {
    _Char_toLower(ch)
}
