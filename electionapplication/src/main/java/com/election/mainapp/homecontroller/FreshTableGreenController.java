package com.election.mainapp.homecontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FreshTableGreenController {

	public FreshTableGreenController() {
		// TODO Auto-generated constructor stub
	}
	
	
//	@GetMapping(value = "/")  
//	public String FreshTableHome(HttpServletRequest request) { 
//		
//  
//		return "busenisshome";    
//	}
	
	
	@GetMapping(value = "/FreshLogo")  
	public String freshLogo(HttpServletRequest request) {
		
		
		return "freshlogo";   
	}

	
	
	@GetMapping(value = "/nuts")   
	public String nuts(HttpServletRequest request) { 
		
		
		return "nuts";    
	}
	
	@GetMapping(value = "/agrecaltureProducts")   
	public String agrecaltureProducts(HttpServletRequest request) { 
		
		
		return "agrecaltureProducts";    
	}
	
	@GetMapping(value = "/wheat-and-diabetes")   
	public String wheatAndDiabetes(HttpServletRequest request) { 
		
		
		return "wheat-and-diabetes";     
	}
	
	
	
	
	
	@GetMapping(value = "/little-of-us")
	public ModelAndView  littleOfUs(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("little-of-us");
		
		return mv ; 
	}
	

	@GetMapping(value = "/searchScreen")
	public ModelAndView  searchScreen(String searchableWord, HttpServletRequest request) {
		
		
		String bananas = "bananas";
		String wheats= "wheats";
		String walnuts= "walnuts";
		String almonds= "almonds"; 
				
		
		
		
		String vegetablesString = " vegetable Artichoke Asparagus Aubergene (eggplant) Avocado Beet Bok Choy Broccoli Broccolini Broccoli Raab Brussels Sprouts Chinese Cabbage Green Cabbage Purple Cabbage Savoy Cabbage Carrots Cauliflower Celeriac Celery Chard (Red and Swiss) Chicory Corn Cress Cucumbers Daikon Garlic Green Beans Greens Collard Greens Mustard Greens Gourds Jicama Kale Kohlrabi Leeks Arugula Lettuce Butter Lettuce Endive Lettuce Green and Red Leaf Lettuce Romaine Lettuce Lima Beans Mushrooms Okra Onions Green Onions Parsnips Peas Snap Sugar Peas Snow Peas Anaheim Peppers Sweet peppers Potatoes Pumpkin Radicchio Radish Rhubarb Romanesco (cauliflower) Rutabaga Shallots Spinach Squash Acorn Squash Butternut Squash Patti Pan Squash Spaghetti Squash Swede Sweet Potato Tomatillo Tomatoes Turnips Water Yam Zucchin ";
		
		String fruitString = " fruit Apple	Banana	Apricot	Atemoya Avocados Blueberry Blackcurrant Ackee Cranberry	Cantaloupe	Cherry	Black sapote/Chocolate pudding fruit Dragonfruit Dates Cherimoya Buddha’s hand fruit Finger lime Fig Coconut Cape gooseberry/Inca berry/Physalis Grapefruit	Gooseberries	Custard apple/Sugar apple/Sweetsop	Chempedak Hazelnut	Honeyberries	Dragon fruit	Durian Horned melon	Hog plum	Egg fruit	Feijoa/Pineapple guava/Guavasteen Indian fig	Ice apple	Guava	Fuyu Persimmon Jackfruit	Jujube	Honeydew melon	Jenipapo Kiwi	Kabosu	Kiwano	Kaffir lime/Makrut lime Lime	Lychee	Longan	Langsat Mango	Mulberry	Pear	Lucuma Muskmelon	Naranjilla	Passion fruit	Mangosteen Nectarine	Nance	Quince	Medlar fruit Olive	Oranges	Ramphal	Mouse melon Papaya	Peach	Rose apple/Water apple	Noni fruit Pomegranate	Pineapple	Rambutan	Snake fruit/Salak Raspberries	Strawberries	Starfruit/Carambola	Soursop Tangerine	Watermelon	Sapota	Star apple Orange	Blood orange Lemon	Kaffir lime Sweet lime	Pomelo Tangerine	Sudachi Ugli fruit	Yuzu fruit Tangelo	Kumquat Mandarin orange	Grapefruit Ackee	Longan Avocado	Lychee Banana	Mango Carambola	Mangosteen Coconut	Muskmelon Custard apple	Papaya Dragon fruit	Passion fruit Durian	Persimmon Fig	Pineapple Grapes	Pomegranate Gooseberries	Rambutan Guava	Rose apple Jackfruit	Star apple Kiwi	Watermelon Banana	Pineapple Mango	Yellow pear Papaya	Egg fruit Guava	Jackfruit Must melon	Canary melon Durian	Yellow peach Grapes	Yellow watermelon Pomelo	Yellow dragon fruit Yellow apple	Yellow plum/Lemon plum Golden kiwi	Husk cherry Passion fruit	Yellow fig Quince	Cantaloupe/Sweet melon/Rock melonGreen apple	Breadfruit Avocado	Durian Green grapes	Jackfruit Pear	Sugar apple/Custard apple Green gooseberry	Marang Kiwi fruit	Guava Honeydew melon	Jocote Pomelo	Star fruit Soursop	Feijoa True medlar/Greengage plum Chempedak Ugli fruit Noni fruit Osage orange	Chayote ";
		
		String nuts = " nuts nut Chestnuts almonds Brazil nuts cashew nuts hazelnuts macadamias pecans pine nuts pistachios walnuts peanuts pumpkin seeds flax seeds sesame seeds poppy seeds sunflower seeds psyllium seeds chia seeds almonds, walnuts, pecans, cashews, hazelnuts, peanuts, macadamia nuts, pine nuts, Brazil nuts, pistachios, and butternuts ";

		ModelAndView  mv = new ModelAndView();
		

		String searchableWordWithSpace = " "+searchableWord+" ";
		if(bananas.toLowerCase().contains(searchableWord.toLowerCase())) {
			mv.setViewName("bananas");
			return mv ;
			
		}else if(wheats.toLowerCase().contains(searchableWord.toLowerCase())) {
			mv.setViewName("wheats");
			return mv ;
			
		}else if(walnuts.toLowerCase().contains(searchableWord.toLowerCase())) {
			mv.setViewName("walnuts");
			return mv ;
		
		}else if(almonds.toLowerCase().contains(searchableWord.toLowerCase())) {
			mv.setViewName("almonds");
			return mv ;
			
		}else if(vegetablesString.toLowerCase().contains(searchableWord.toLowerCase())) {
			
			
			mv.setViewName("vegetables");
			return mv ;
		}else if(fruitString.toLowerCase().contains(searchableWord.toLowerCase())) { 
			
			mv.setViewName("fruit"); 
			return mv ;
		}else if(nuts.toLowerCase().contains(searchableWord.toLowerCase())) { 
			
			mv.setViewName("nuts");
			return mv ; 
		}
		

		
		
		mv.setViewName("ErrorSearch"); 
		
		return mv ; 
	}
	
 
	
	@GetMapping(value = "/aboutus") 
	public ModelAndView  aboutUs(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("aboutus");
		
		
		return mv ; 
	}
	
	
	
	
	@GetMapping(value = "/corporatesustainability") 
	public ModelAndView  corporateSustainability(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("corporatesustainability");
		
		
		return mv ; 
	}

	@GetMapping(value = "/awards") 
	public ModelAndView  awards(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("awards");
		
		
		return mv ; 
	}
	
	@GetMapping(value = "/sustainability") 
	public ModelAndView  sustainability(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("sustainability");
		
		
		return mv ; 
	}
	
	
	@GetMapping(value = "/alliances") 
	public ModelAndView  alliances(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("alliances");
		
		
		return mv ; 
	}
	
	
	
	@GetMapping(value = "/certifications") 
	public ModelAndView  certifications(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("certifications");
		
		
		return mv ; 
	}

	
	@GetMapping(value = "/healthandsafety") 
	public ModelAndView  healthAndSafety(HttpServletRequest request) { 
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("healthandsafety");
		
		
		return mv ; 
	}
	
	
	
	
	@GetMapping(value = "/premiumbananas") 
	public ModelAndView  premiumBananas(HttpServletRequest request) { 
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("premiumbananas");
		
		
		return mv ; 
	}
	
	
	
	
	@GetMapping(value = "/agroindustrialsustainability") 
	public ModelAndView  agroindustrialSustainability(HttpServletRequest request) {  
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("agroindustrialsustainability");
		
		
		return mv ; 
	}

	
	
	
	@GetMapping(value = "/tropicaloil") 
	public ModelAndView  tropicalOil(HttpServletRequest request) {  
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("tropicaloil");
		
		
		return mv ; 
	}
	
	
	

	
	
	@GetMapping(value = "/agro-industrialsustainability") 
	public ModelAndView  agroIndustrialSustainability(HttpServletRequest request) {  
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("agro-industrialsustainability");
		
		
		return mv ; 
	}
	
	
	
	
	
	@GetMapping(value = "/identitypreservedmodel") 
	public ModelAndView  identityPreservedModel(HttpServletRequest request) {   
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("identitypreservedmodel");
		
		
		return mv ; 
	}
	
	
		
	
	@GetMapping(value = "/naturalingredients") 
	public ModelAndView  naturalIngredients(HttpServletRequest request) {   
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("naturalingredients");
		
		
		return mv ; 
	}

	
	@GetMapping(value = "/logisticsandtransportation") 
	public ModelAndView  logisticsAndTransportation(HttpServletRequest request) {   
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("logisticsandtransportation");
		
		
		return mv ; 
	}
	
	
	
	

	
	@GetMapping(value = "/news&blogs") 
	public ModelAndView  newsAndBlogs(HttpServletRequest request) {   
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("news&blogs");
		
		
		return mv ; 
	}
	
	
	 
	
	
	@GetMapping(value = "/ouroffices") 
	public ModelAndView  ourOffices(HttpServletRequest request) {   
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("ouroffices");
		
		
		return mv ; 
	}
	
	
	
	


	@GetMapping(value = "/ethicsline") 
	public ModelAndView  ethicsLine(HttpServletRequest request) {    
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("ethicsline");
		
		
		return mv ; 
	}
	
	
	
	
	
	@GetMapping(value = "/premiumpineapples") 
	public ModelAndView  premiumPineapples(HttpServletRequest request) {    
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("premiumpineapples");
		
		
		return mv ; 
	}
	
	
 
	
	@GetMapping(value = "/bananas") 
	public ModelAndView  bananas(HttpServletRequest request) {    
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("bananas");
		
		
		return mv ; 
	}
	
	
	
	
	@GetMapping(value = "/wheats") 
	public ModelAndView  wheats(HttpServletRequest request) {    
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("wheats");
		
		
		return mv ; 
	}
	
	
	
	
	
	@GetMapping(value = "/walnuts") 
	public ModelAndView  walnuts(HttpServletRequest request) {    
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("walnuts");
		
		
		return mv ; 
	}
	
	
	

	
	
	@GetMapping(value = "/almonds") 
	public ModelAndView  almonds(HttpServletRequest request) {    
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("almonds");
		
		
		return mv ; 
	}
	
	
	
	
	
	
	
	
	
}
