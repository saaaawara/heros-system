json.array! @classes do |c|
    json.id c.id
    json.student_id c.student_id
    json.teacher_id c.teacher_id
    json.date c.date
    json.content c.content
    json.comment c.comment
    json.homework_id c.homework_id
end