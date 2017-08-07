#Parish,Surname,First Name,Last Name,Street,City,State,Zip,Email Address,Phone,Address Updated,Donated
defmodule FindUnchangedFirstnames do
  #same firstname lastname and street address
  def rows_union(before_csv, after_csv) do
    Set.union(parse_csv(before_csv), parse_csv(after_csv))
  end

  def parse_csv(csv_filepath) do
    #load csv module output list of tuples
    csv_filepath
    |> File.stream!
    |> CSV.decode([:strip_fields])
  end
end
