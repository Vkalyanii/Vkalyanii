const onBeforeEmployeeCreate = async (req) => {
   const date = getage(req.data.DOB);
   req.data.Age = date
   console.log(date);

    // const { DOB } = req.data;
    // const iAge = _getAge(DOB);
    // req.data.age = iAge;
  };

   const getage =(srv)=>{
     const todaydate = new Date()
     const dob = new Date(srv)
     const age = todaydate.getFullYear() - dob.getFullYear()
     return age
   }

  
  const onAfterEmployeeCreate = async (req) => {

    console.log(req);
    // req.fName = `Mr. ${req.fName}`;
    // return req;
  };
  
  // const _getAge = (sDate) => {
  //   const oToday = new Date(),
  //     oBirthDate = new Date(sDate);
  //   const age = oToday.getFullYear() - oBirthDate.getFullYear();
  //   return age;
  // };
  
  module.exports = {
    onBeforeEmployeeCreate,
    onAfterEmployeeCreate,
  };
  