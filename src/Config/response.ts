//succes => 200
// const succesCode = (res, content, message) => {
//   res.status(200).json({
//     statusCode: 200,
//     message,
//     content,
//     dateTime: new Date(),
//   });
// };
// // fail => 400, 401, 403, 404
// const failCode = (res, content, statusCode, message) => {
//   res.status(statusCode).json({
//     statusCode,
//     message,
//     content,
//     dateTime: new Date(),
//   });
// };
// // error => 500
// const errorCode = (res, message) => {
//   res.status(500).json({
//     statusCode: 500,
//     message,
//     content: '',
//     dateTime: new Date(),
//   });
// };

// export { succesCode, failCode, errorCode };

// export class Response {
//   constructor(statusCode, message, content, dateTime) {
//     this.statusCode = statusCode;
//     this.message = message;
//     this.content = content;
//     this.dateTime = dateTime;
//     return this;
//   }
//   // this.content: [];
//   this.statusCode: number;
//   message: string;
//   dateTime: Date;
// }
