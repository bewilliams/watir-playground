#the methods and classes in this library are to be used with watir

#convert table text to CSV - takes a Watir::Table
def make_csv(table)
  csv = ''
  table.rows.each do |row|
    row.cells.each do |cell|
      csv += cell.text + ','
    end
    csv += "\n"
  end
  return csv
end

#convenient way to determine if a TD or TH from the base class TableCell
class Watir::TableCell
  def is_td?
    self.to_subtype.class == Watir::TableDataCell
  end
  def is_th?
    self.to_subtype.class == Watir::TableHeaderCell
  end
end



