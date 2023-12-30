import kotlinx.serialization.*
import kotlinx.serialization.json.*

@Serializable
data class Project(val name: String, val language: String)

fun main() {
    println(add(2, 3))
    val obj = Json.decodeFromString<Project>("{\"name\":\"kotlinx.serialization\",\"language\":\"Kotlin\"} ")
    println(obj) // Project(name=kotlinx.serialization, language=Kotlin)
}

fun add(a: Int, b: Int) = a + b
