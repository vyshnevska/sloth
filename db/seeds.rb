
print '.' if Crumb.create(field_key: 'github_commits', number: 1552, label: 'Contribution in Github', visible: true)
print '.' if Crumb.create(field_key: 'github_inserts', number: 67999, label: 'Added in total lines of code', visible: true)
print '.' if Crumb.create(field_key: 'github_deletions', number: 52848, label: 'Deleted lines of code', visible: true)
print '.' if Crumb.create(field_key: 'first_commit', number: 1, label: 'On Jun 30, 2015, commit hash c5d0fb53017d4f47ef258e956d62460f6bfa5123', visible: true)

working_days = (Date.parse('2016-09-23') - Date.parse('2015-06-30')).to_i
print '.' if Crumb.create(field_key: 'working_days', number: working_days, label: 'Days at Makerist', visible: true)