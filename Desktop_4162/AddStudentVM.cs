using Desktop_4162.Model;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Win32;
using System;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Desktop_4162
{
    public partial class AddStudentVM : ObservableObject

    {


        [ObservableProperty]
        public string firstname;


        [ObservableProperty]
        public string lastname;

        [ObservableProperty]
        public int age;

        [ObservableProperty]
        public string dateofbirth;

        [ObservableProperty]
        public double gpa;



        



        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage selectedImage;



        public AddStudentVM(Student s)
        {
            User = s;

            firstname = User.FirstName;
            lastname = User.LastName;
            age = User.Age;
            gpa = User.GPA;
            dateofbirth = User.DateOfBirth;
            selectedImage = User.Image;

        }
        public AddStudentVM()
        {

        }


        //get image 
        [RelayCommand]
        public void UploadPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                selectedImage = new BitmapImage(new Uri(dialog.FileName));

                MessageBox.Show("Image successfuly uploded!", "Confirmation");
            }
        }






        public Student User { get; private set; }
        public Action CloseAction { get; internal set; }

        [RelayCommand]
        public void Save()
        {



            if (gpa < 0 || gpa > 4)
            {
                MessageBox.Show("In order to be considered valid, the GPA value must be within the numerical range of 0 to 4.\r\n.", "Error");
                return;
            }
            if (User == null)
            {

                User = new Student()
                {
                    FirstName = firstname,
                    LastName = lastname,
                    Age = age,
                    DateOfBirth = dateofbirth,
                    Image = selectedImage,

                    GPA = gpa

                };


            }
            else
            {

                User.FirstName = firstname;
                User.LastName = lastname;
                User.Age = age;
                User.GPA = gpa;
                User.Image = selectedImage;
                User.DateOfBirth = dateofbirth;



            }

            if (User.FirstName != null)
            {

                CloseAction();
            }
            Application.Current.MainWindow.Show();


        }
    }
}
