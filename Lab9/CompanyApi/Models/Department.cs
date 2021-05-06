using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CompanyApi.Models
{
    public partial class Department
    {
        public Department()
        {
            Employee = new HashSet<Employee>();
        }

        public int DepartmentId { get; set; }
        [StringLength(20)]
        public string Name { get; set; }

        [InverseProperty("Department")]
        public ICollection<Employee> Employee { get; set; }
    }
}
