import java.io.RandomAccessFile

private fun show(flag: Array<LongArray>, chars: String, slogan: String) {
    var c_ = 0
    var li = 0
    repeat(15) { i ->
        repeat(41) { j ->
            var c = chars[li]
            val li_ = li
            while (li < 4) {
                c = chars[li]
                if (flag[li][i].shr(j).and(1) == 0L) {
                    break
                }
                ++li
            }
            li = li_
            if (c == chars.last()) {
                c = slogan[c_++]
            }
            print(c)
        }
        println()
    }
}

fun main() {
    val flag = Array(4) { LongArray(15) }
    RandomAccessFile("flag", "r").use { data ->
        val bytes = ByteArray(6)
        repeat(4) { i ->
            repeat(15) { j ->
                data.readFully(bytes)
                flag[i][j] = 0L
                repeat(6) { bi ->
                    val mask = ((bytes[5 - bi].toLong().and(0xFF))).shl(8 * bi)
                    flag[i][j] = flag[i][j].or(mask)
                }
            }
        }
    }
    show(flag, ".#` ", " ORDEM E PROGRESSO ")
}
