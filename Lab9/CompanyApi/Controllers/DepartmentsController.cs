﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CompanyApi.Models;

namespace CompanyApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentsController : ControllerBase
    {
        private readonly CompanyDbContext _context;

        public DepartmentsController(CompanyDbContext context)
        {
            _context = context;
        }

        // GET: api/Departments
        [HttpGet]
        public IEnumerable<DepartmentDTO> GetDepartment()
        {
            return _context.Department.Select(e => DepartmentToDTO(e));
        }

        // GET: api/Departments/5
        [HttpGet("{id}")]
        public async Task<ActionResult<DepartmentDTO>> GetDepartment([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var department = await _context.Department.FindAsync(id);

            if (department == null)
            {
                return NotFound();
            }

            return DepartmentToDTO(department);
        }

        // PUT: api/Departments/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDepartment([FromRoute] int id, [FromBody] DepartmentDTO departmentDTO)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != departmentDTO.DepartmentId)
            {
                return BadRequest();
            }

            _context.Entry(DTOToDepartment(departmentDTO)).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DepartmentExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Departments
        [HttpPost]
        public async Task<ActionResult<DepartmentDTO>> PostDepartment([FromBody] DepartmentDTO departmentDTO)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Department.Add(DTOToDepartment(departmentDTO));
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetDepartment", new { id = departmentDTO.DepartmentId }, departmentDTO);
        }

        // DELETE: api/Departments/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<DepartmentDTO>> DeleteDepartment([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var department = await _context.Department.FindAsync(id);
            if (department == null)
            {
                return NotFound();
            }

            _context.Department.Remove(department);
            await _context.SaveChangesAsync();

            return DepartmentToDTO(department);
        }

        private bool DepartmentExists(int id)
        {
            return _context.Department.Any(e => e.DepartmentId == id);
        }

        private static DepartmentDTO DepartmentToDTO(Department department) =>
            new DepartmentDTO
            {
                DepartmentId = department.DepartmentId,
                Name = department.Name
            };

        private static Department DTOToDepartment(DepartmentDTO departmentDTO) =>
            new Department
            {
                DepartmentId = departmentDTO.DepartmentId,
                Name = departmentDTO.Name
            };
    }
}