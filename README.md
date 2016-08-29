simple_django_project
==========================

A pre made structure for simple Django projects

Description
-----------

This is a simple structure for Django projects, that has separated settings and requirements, it's also configured to run with Mysql using "mysqlclient" for Python3.

This let you to start a project with a new repository from your Github account and start to developing withou need to create the repository.

To create a new project, just run these steps found on: https://help.github.com/articles/duplicating-a-repository/::

    $git clone --bare https://github.com/eduardoOliva/simple_django_project.git
    # Make a bare clone of the repository
    
    $cd simple_django_project.git/
    $git push --mirror https://github.com/exampleuser/new-repository.git
    # Mirror-push to the new repository (you must have created it befeore)
    
    $cd ..
    $rm -rf old-repository.git
    # Remove our temporary local repository
    
Now, you can clone your new-repository into your machine and start to work in your project.::

    $git clone https://github.com/exampleuser/new-repository.git
    $cd new-repository
    
And start your working
