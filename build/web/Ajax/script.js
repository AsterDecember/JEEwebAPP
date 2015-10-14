/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function automatic(){

//$(document).ready(function(){
    
    $('#Refresh').click(function(event){
        
        var id = $('#usuarios').val();
        console.write(id);
        $.post('Refresh',{
            id:id
        }, function(responseTxt){
            
            $('#table').html(responseTxt);
            
        });
        
    })
    
}