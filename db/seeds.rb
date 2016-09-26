
print '.' if Crumb.create(field_key: 'github_commits', number: 1552, label: 'Contribution in Github', visible: true, visual_options: { has_nested: false })
print '.' if Crumb.create(field_key: 'github_inserts', number: 67999, label: 'Added lines of code', visible: true, visual_options: { has_nested: false })
print '.' if Crumb.create(field_key: 'github_deletions', number: 52848, label: 'Deleted lines of code', visible: true, visual_options: { has_nested: false })
print '.' if Crumb.create(field_key: 'first_commit', number: 1, label: 'First commit#c5d0fb53017d4f47ef258e956d62460f6bfa5123 on Jun 30, 2015', visible: true, visual_options: { has_nested: false, odometer: false })

working_days = (Date.parse('2016-09-23') - Date.parse('2015-06-30')).to_i

print '.' if Crumb.create(field_key: 'working_time', number: 0, label: 'Work at Makerist', visible: true, visual_options: { has_nested: true })
print '.' if Crumb.create(field_key: 'working_hours', number: working_days*8, label: 'Hours at Makerist', visible: true, visual_options: { has_nested: true, master_key: 'working_time' })
print '.' if Crumb.create(field_key: 'working_days', number: working_days, label: 'Days at Makerist', visible: true, visual_options: { has_nested: true,  master_key: 'working_time' })