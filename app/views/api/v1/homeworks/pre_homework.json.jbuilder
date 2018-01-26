json.array! @homework do |homework|
    json.student_id homework.student_id
    json.teacher_id homework.teacher_id
    json.date homework.date
    json.flag homework.flag
    json.content homework.content
end