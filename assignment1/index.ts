
// Check dupplicate 
const list_a = [1,2,3,5,6,8,9]
const list_b = [3,2,1,5,6,0]

const checkDuplicate = (list_a:number[], list_b:number[]) =>{
    const dup_new_lists:number[] = []
    
    for (let i = 0; i < list_a.length; i++) {
        list_b.includes(list_a[i]) ? dup_new_lists.push(list_a[i]) : null
    }
    return dup_new_lists.sort()
}

const new_lists = checkDuplicate(list_a, list_b)
console.log(new_lists)
// expected [1,2,3,5,6]