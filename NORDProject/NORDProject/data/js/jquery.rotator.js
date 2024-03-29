﻿;(function($){
	
	
	var defaults = {
		speed: 500,
        timeout: 9000,
        width: 640,
        height: 300,
        random: false, 
        autorun: true,
        fx: 'slide',
        nav: true		
	};
	
	
	$.rotator = function(e, o) {
		
		this.options = $.extend({}, defaults, o || {});
		
		this.el = $(e);
        this.step = -1;
        this.current = 0;
        this.previous = 0;
        this.animating = false;
        this.intervalID = null;
		
		this.nav_left = $('<a href="javascript:void(0);" class="rotator-nav" id="rotator-left"><div></div></a>');
		this.nav_right = $('<a href="javascript:void(0);" class="rotator-nav" id="rotator-right"><div></div></a>');
		this.preloader = $('<div class="preloader_rotator"></div>');
		this.main_rotator = $('<div class="main_rotator"></div>');
		this.slides_rotator = $('<ul class="slides_rotator"></ul>');
		
		this.count = this.options.slides.length - 1;
       
		this.init();
					
	};
	
	
	var $r = $.rotator;

	$r.fn = $r.prototype = {
        rotator: '0.1'
    };
	
	$r.fn.extend = $r.extend = $.extend;

    $r.fn.extend({
    	
    	init: function(){

    		this.preload();
            
            var self = this;
            
            this.nav_left.bind('click.rotator',function(){
                
				self.prev();
			});
			
			this.nav_right.bind('click.rotator',function(){

				self.next();
			});
    		
    	},
        add: function(slides){
            
            if(slides.length == 0) return false;
            
            var render = [], self = this;
	    	
            
            this.count += slides.length-1;
           
	    	$.each(slides,function(i,slide){
	    		
	    		render.push('<li><div class="img_rotator"><a rel="nofollow" href="'+slide.url+'" target="'+slide.abt+'"><img src="'+slide.img+'" width="'+self.options.width+'" height="'+self.options.height+'" alt="*" /></a></div></li>');
	    	});

	    	this.slides_rotator
            .append(render.join(''))
            .find('li')
            .css({'position': 'absolute','z-index': 1,'left':this.options.width});
            
        },
    	preload: function(){
    		
	    	this.el.html(this.preloader.append('<img src="design/loader.gif" width="32" alt="Загрузка..." />'));               		    	
	        var loaded = 0,pic = [],self = this;
            
            this.slides = this.render().find('li').css({'position': 'absolute','z-index': 1});

            this.main_rotator.css({display: 'none'});
            this.slides_rotator.css({width:this.options.width,height:this.options.height}); 
            
	        if(this.options.fx == 'fade'){

		        this.slides.css('opacity',0).eq(0).css({'z-index': 1,'opacity':1});
	    	}
	    	else{

	    		this.slides_rotator.css('overflow','hidden'); 
                
		        this.slides.css('left',this.options.width).eq(0).css({'z-index': 2,'left':0});

             }
             
	        for (i=0; i <= this.count; i++) {
	           
	           pic[i] = new Image();
               
               pic[i].onload = function() {

	                loaded++;

	                if(loaded >= self.count){
	                   
	                	self.main_rotator.show();
                        $('.rotator-nav').show();
	                	self.preloader.hide();
	                    
	                	if(self.options.autorun){
	                		
	                		self.start();
	                	}
	                    
	                }
	            };
                
                pic[i].src = this.options.slides[i].img;
	        }
		},
		render: function(){
	    	
            this.el.append(this.main_rotator);
    				
            if(this.options.nav){
                
                this.el.append(this.nav_left,this.nav_right);
                
                $('.rotator-nav').hide();
            }
            
            if(this.options.random){
                
                this.options.slides.sort(function() {return 0.5 - Math.random()});
            }
	    	
	        
	    	var render = [], self = this;
	    	
	    	$.each(this.options.slides,function(i,slide){
	    		
	    		render.push('<li><div class="img_rotator"><a rel="nofollow" href="'+slide.url+'" target="'+slide.abt+'"><img src="'+slide.img+'" width="'+self.options.width+'" height="'+self.options.height+'" alt="*" /></a></div></li>');
	    	});

	    	return this.slides_rotator.html(render.join('')).appendTo(this.main_rotator);

	    },
        start: function(){
            var self = this;
            this.step = -1; 
	    	this.intervalID = setInterval(function(){self.next();},this.options.timeout);   	
	    },
        stop: function(){
            
            clearInterval(this.intervalID);    	        
        },
        next: function(){
            
            if(this.animating) return false;
            
            this.step = -1;  
            	    	     
	    	if(this.current >= this.count) this.current = -1;
	
	    	this.previous = this.current;
	    	this.current++;
	
	    	if(this.current == 0) this.previous = this.count;
	    	
	    	this.run();

	    },
        prev: function(){
            
            if(this.animating) return false;
            
            this.step = 1;
	    	this.previous = this.current;
	    	this.current--;
	
	    	if(this.current < 0) this.current = this.count;
        	
        	this.run();
        },
        run: function(){

            var self = this;
            
            this.animating = true;
                        
            if(this.options.autorun) this.stop();
				
        	if(this.options.fx == 'fade'){

                this.slides.eq(this.previous)
                .css('z-index',1)
                .stop(true,true)
                .animate({'opacity': 0},this.options.speed);  
                                    
        		this.slides.eq(this.current)
                .css('z-index',2)
                .stop(true,true)
                .animate({'opacity': 1},this.options.speed,function(){                    
                    self.animating = false;
                });  
        	}
        	else{

                this.slides.eq(this.previous)
                .css('z-index',1)
                .stop(true,true)
                .animate({'left': this.step*this.options.width},this.options.speed,function(){
                    
                    $(this).css('left',this.step*self.options.width);

                });
                
                var sc = this.slides.eq(this.current);

                if(sc.css('left').match(/([-\d]+)/)[1] != -this.step*this.options.width){
                    
                    sc.css('left',-this.step*this.options.width);
                }
                
                sc.css({'z-index':2}).stop(true,true).animate({'left': 0},this.options.speed,function(){
                    
                    self.animating = false;
                    
                });
        	}
            
            if(this.options.autorun) this.start();
        }
    	
    });
    
    $.fn.rotator = function(o){
    	
    	if (typeof o == 'string') {
            var instance = $(this).data('rotator'), args = Array.prototype.slice.call(arguments, 1);
            return instance[o].apply(instance, args);
        } else {
            return this.each(function() {
                var instance = $(this).data('rotator');
                if (instance) {
                    if (o) {
                        $.extend(instance.options, o);
                    }
                    
                    instance.init();
                    
                } else {
                	
                    $(this).data('rotator', new $r(this, o));
                }
            });
        }
    };   
})(jQuery);