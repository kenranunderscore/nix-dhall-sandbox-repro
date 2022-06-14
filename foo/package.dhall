let GitLab = ./GitLab.dhall

let Job = GitLab.Job

in  { Shmup = ./shmup.dhall, Foo = Job::{ script = [ "echo foo", "true" ] } }
