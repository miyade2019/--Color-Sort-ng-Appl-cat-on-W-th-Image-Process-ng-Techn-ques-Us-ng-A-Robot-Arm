%%
%tic ve toc snler göstermek için kullanýlýr 
clear all;
a=arduino('com3','Uno','Libraries','Servo');
s1=servo(a,'D6');
s2=servo(a,'D7');

%cam1=webcam(1);
cam1=webcam(1);

while true
    
    %img1= snapshot(cam1);
    img2= snapshot(cam1);
    %%vidyodevam eder
    
   % img1= flip(img1,2);%%ayna yapar 
    img2= flip(img2,2);
    
    
    %img1_gry=rgb2gray(img1);
    img2_gry=rgb2gray(img2);
    img2_r=img2(: ,: ,1);
    img2_b=img2(: ,: ,2);
    img2_y=img2(: ,: ,3);
      
    subplot (2,2,1);imshow(img2);
    subplot (2,2,2);imshow(img2_r);
    subplot (2,2,3);imshow(img2_b);
    subplot (2,2,4);imshow(img2_y);
    




r=0;b=0;g=0;


[a n m ]=size(img2);
for i=1:m
    for j=1:n
        if  img2(i ,j ,1)>100
            r=r+1;
        end
        if  img2(i ,j ,2)>100
            g=g+1;
        end
        
        if  img2(i ,j ,3)>100
            b=b+1;
        end
        
        end
        end
        
    x=[r,g,b];
    [M ,I]=max(x);
    if I==1
        writePosition(s2,0);
        pause(2);
        writePosition(s2,1);
        pause(2);
        writePosition(s1,0.3);
        pause(2);
        writePosition(s2,0);
        pause(2);
        writePosition(s2,1);
        pause(2);
        writePosition(s1,0);
        pause(2);
        writePosition(s2,0);
        pause(2);
    elseif I==2
       writePosition(s2,0.5);
        pause(2);
        writePosition(s2,1);
        pause(2);
        writePosition(s1,0.6);
        pause(2);
        writePosition(s2,0);
        pause(2);
        writePosition(s2,1);
        pause(2);
        writePosition(s1,0);
        pause(2);
        writePosition(s2,0);
        pause(2);
        
   
    else 
        writePosition(s2,0);
        pause(2);
        writePosition(s2,1);
        pause(2);
        writePosition(s1,0.9);
        pause(2);
        writePosition(s2,0);
        pause(2);
        writePosition(s2,1);
        pause(2);
        writePosition(s1,0);
        pause(2);
        writePosition(s2,0);
        pause(2);
    end
    end
   
    
        
        
        
    
    


