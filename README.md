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
    $rm -rf simple_django_project.git/
    # Remove our temporary local repository
    
Now, you can clone your new-repository into your machine and start to work in your project.::

    $git clone https://github.com/exampleuser/new-repository.git
    $cd new-repository
    
And start your working

Note
----
 
When you clone this new repository and start working, you **must** run the **rename_project.sh**.
This script will ask the name of this new project, you type there and it renames for you all the files.::

    $./rename_project.sh
    The new project's name: my_new_project

    Moving the project dir simple_django to my_new_project
    Changing every entry of simple_django inside the project

You can run this command to change the project name whenever you want.

After that, just run **python manage.py runserver** and test if it's working, don't forget to change the database setting.

DON'T FORGET
---------------

Change the SECRET_KEY in your **simple_django/settings/base.py**.

Open a python terminal and type this to generate a good secret key:
::

    >>> import random
    >>> ''.join([random.SystemRandom().choice('abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*(-_=+)') for i in range(50)])
    '7%ia!et@s@dd3vb!fmq2rq079e+98&o#d+rvvto542wgm+sjc&'

In my case it returned this secret key, just copy and paste in your settings file.
