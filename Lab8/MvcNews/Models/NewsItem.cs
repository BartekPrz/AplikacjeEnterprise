using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MvcNews.Models
{
    public class NewsItem
    {
        public int Id { get; set; }

        [DataType(DataType.DateTime)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime TimeStamp { get; set; }

        [Required]
        [StringLength(140, MinimumLength = 5)]
        public String Text { get; set; }

        [Timestamp]
        public byte[] RowVersion { get; set; }
    }
}
