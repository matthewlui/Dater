
##Dater is a small util to help handle and get types of date string in ease written in swift.

For example you can:
`

let monday = Weekday.monday
monday.shortString() /// "Mon"
let iter = monday.iterator
let tuesday = iter.next()
let wednesday = iter.next()
iter.next()?.fullString /// "Thursday"

`
I've prepared Weekday and Month and will expand with any other suitable time type.
