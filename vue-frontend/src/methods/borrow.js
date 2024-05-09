import request from "@/util/request";

// 查询个人的借书记录
const getBorrowByReaderIdService = function () {
    return request.get('/borrow');
};

//借书
// const borrowService = function (isbn, dueDate) {
//     return request.get('/borrow/borrowBook', {
//         params: {
//             isbn: isbn,
//             dueDate: dueDate
//         }
//     });
// };
//借书
const borrowService = async function (isbn, dueDate) {
    // 获取当前读者未归还的书籍信息
    const borrowRecords = await getBorrowByReaderIdService();
    const borrowedBooks = borrowRecords.data.filter(borrowvo => borrowvo.status===1);

    // 判断未归还的书籍数量是否大于等于5本
    if (borrowedBooks.length >= 5) {
        throw new Error('您已借阅了5本书，不能再借阅更多书籍！');
    }else{
    // 继续进行借书操作
    return request.get('/borrow/borrowBook', {
        params: {
            isbn: isbn,
            dueDate: dueDate
        }
    }
    );}
};

// 还书
const returnBookService = function (id, isbn) {
    console.log(id);
    return request.get('/borrow/returnBook', {
        params: {
            id: id,
            isbn: isbn
        }
    });
};

// 删除借书记录
const deleteByIdService = function (id) {
    return request.delete('/borrow', {
        params: {id: id},
    });
};

//批量删除借阅记录
const deleteBorrowBatchService = function (ids) {
    return request.post('/borrow/batch', ids);
};

export {
    getBorrowByReaderIdService,
    borrowService,
    returnBookService,
    deleteByIdService,
    deleteBorrowBatchService
};