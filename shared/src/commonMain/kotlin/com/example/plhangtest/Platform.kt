package com.example.plhangtest

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform