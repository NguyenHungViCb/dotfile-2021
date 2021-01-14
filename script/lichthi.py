from rich.console import Console
from rich.table import Table

console = Console()

table = Table(show_header=True, header_style="bold cyan")
table.add_column("Ngày thi", style="bold red", width=12)
table.add_column("Tên học phần")
table.add_column("Giờ thi", justify="right")
table.add_column("Phòng thi", justify="right")
table.add_row(
    "06/01/2020", "Lập trình trên thiết bị di động", "13g00", "PM09"
)
table.add_row(
    "09/01/2021",
    "Cơ sở trí tuệ nhân tạo",
    "13g00",
    "PM05",
)
table.add_row(
    "12/01/2021",
    "Công nghệ phần mềm",
    "13g00",
    "B46",
)

table.add_row(
    "19/01/2021",
    "Tiếng Anh chuyên ngành 1",
    "7g30",
    "B51",
)

table.add_row(
    "19/01/2021",
    "Lập trình hướng đối tượng",
    "9g00",
    "B57",
)
table.add_row(
    "21/01/2021",
    "Giải tích",
    "7g30",
    "B61",
)
table.add_row(
    "23/01/2021",
    "Tư tưởng Hồ Chí Minh",
    "9g00",
    "B52",
)
console.print(table)
