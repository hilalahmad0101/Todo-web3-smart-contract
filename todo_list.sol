// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;


struct Todo{
    string title;
    bool completed;
}


contract TodoContact{
    Todo[]  todos;

    function addTodo(string memory _title) public {
        todos.push(Todo({
            title:_title,
            completed:false
        }));
    }

    function retrieveTodo() public view returns(Todo[] memory){
        return todos;
    }

    function getTotalCounts() public view returns(uint256){
        return todos.length;
    }
    

    function getTodoById(uint256 index) public view returns(Todo memory){
        return todos[index];
    }

    function markedToComplete(uint256 index) public{
        todos[index].completed=true;
    }
}
