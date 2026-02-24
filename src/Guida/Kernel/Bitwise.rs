/*

*/


fn _Bitwise_and(a: i32, b: i32) -> i32 {
    a & b
}

fn _Bitwise_or(a: i32, b: i32) -> i32 {
    a | b
}

fn _Bitwise_xor(a: i32, b: i32) -> i32 {
    a ^ b
}

fn _Bitwise_complement(a: i32) -> i32 {
    !a
}

fn _Bitwise_shiftLeftBy(offset: u32, a: i32) -> i32 {
    a.wrapping_shl(offset)
}

fn _Bitwise_shiftRightBy(offset: u32, a: i32) -> i32 {
    a.wrapping_shr(offset)
}

fn _Bitwise_shiftRightZfBy(offset: u32, a: i32) -> i32 {
    ((a as u32).wrapping_shr(offset)) as i32
}
