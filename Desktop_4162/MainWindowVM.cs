
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop_4162;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Desktop_4162.Model;
using DevExpress.Utils.CommonDialogs.Internal;

namespace Desktop_4162
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<Student> students;
        [ObservableProperty]
        public Student selectedStudent = null;



        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }




        [RelayCommand]
        public void message()
        {

            MessageBox.Show($"{selectedStudent.FirstName} GPA value must be between 0 and 4.", "Error ");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddStudentVM();
            vm.title = "Add Student";
            AddStudentWindow window = new AddStudentWindow(vm);
            window.ShowDialog();

            if (vm.User.FirstName != null)
            {
                students.Add(vm.User);
            }
        }

        [RelayCommand]
        public void Delete()
        {
            if (selectedStudent != null)
            {
                string name = selectedStudent.FirstName;
                DialogResult result = (DialogResult)MessageBox.Show($"Are you sure? ", "Delete Student", MessageBoxButton.YesNo);
                {
                    if (result == DevExpress.Utils.CommonDialogs.Internal.DialogResult.Yes)
                    {
                        students.Remove(selectedStudent);
                        MessageBox.Show($"{name} is Deleted successfully.", "Confirmation  ");
                    }
                }
               

            }
            else
            {
                MessageBox.Show("Please select the Student before Delete.", "Error Message");


            }
        }
        [RelayCommand]
        public void ExecuteEditStudentCommand()
        {
            if (selectedStudent != null)
            {
                var vm = new AddStudentVM(selectedStudent);
                vm.title = "Edit Student";
                var window = new AddStudentWindow(vm);

                window.ShowDialog();


                int index = students.IndexOf(selectedStudent);
                students.RemoveAt(index);
                students.Insert(index, vm.User);



            }
            else
            {
                MessageBox.Show("Please select the Student before Edit", "Warning Message!");
            }
        }

        public MainWindowVM()
        {
            Students = new ObservableCollection<Student>();
            BitmapImage image1 = new BitmapImage(new Uri("/Model/Images/1.png", UriKind.Relative));
            Students.Add(new Student(24, "Bawantha", "Rathnnayake", "15/05/1998",2.5, image1));
            BitmapImage image2 = new BitmapImage(new Uri("/Model/Images/2.png", UriKind.Relative));
            Students.Add(new Student(23, "Sulakshani", "Tashina", "15/12/1999",3.1, image2));
            BitmapImage image3 = new BitmapImage(new Uri("/Model/Images/3.png", UriKind.Relative));
            Students.Add(new Student(24, "Chamaka", "Nirukthi", "23/11/1998",2.7, image3));
            BitmapImage image4 = new BitmapImage(new Uri("/Model/Images/4.png", UriKind.Relative));
            Students.Add(new Student(24, "Sidath", "Wimukthi", "17/07/1998",1.9, image4));
            BitmapImage image5 = new BitmapImage(new Uri("/Model/Images/5.png", UriKind.Relative));
            Students.Add(new Student(24, "Gihan", "Kolitha", "29/09/1998", 2.2, image5));
            BitmapImage image6 = new BitmapImage(new Uri("/Model/Images/6.png", UriKind.Relative));
            Students.Add(new Student(24, "Malith", "Sandaruwan", "15/03/1998", 3.2, image6));
            BitmapImage image7 = new BitmapImage(new Uri("/Model/Images/7.png", UriKind.Relative));
            Students.Add(new Student(23, "Athila", "Ravindu", "20/11/1999", 2.8, image7));
            BitmapImage image8 = new BitmapImage(new Uri("/Model/Images/8.png", UriKind.Relative));
            Students.Add(new Student(23, "Sashika", "Wijesinghe", "31/03/1999", 3.9, image8));

        }
    }
}



