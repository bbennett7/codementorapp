VALIDATIONS:
#-name
#  -must be present
#  -must contain only a-z

#-username
#  -must be unique
#  -must be present
#  -must be at least 8 characters
  -Validate against both student and mentor models?

#-email
#  -must be present
#  -must be unique
#  -must end with @ abc.com => gem for this?


#-password
#  -must be present
#  -must be at least 8 characters

-authorizations
  -student's can't access new, create, edit, and update resource paths
  -mentors can't see find a mentor page
  -students can't see find a student page
