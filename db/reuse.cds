namespace reuse.types;

type Amount : Decimal(10,2);

type email : String @assert.format: '^[\w\-\.]+@([\w-]+\.)+[\w-]{2,}$';
type phone : String @assert.format: '^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$';
aspect PersonDetail{
  fname:String;
  lName:String
}