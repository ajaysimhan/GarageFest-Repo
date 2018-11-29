try{	
document.getElementById('1') && Highcharts.chart('1', {
    chart: {
        type: 'pie',
        options3d: {
            enabled: true,
            alpha: 45,
            beta: 0
        }
    },
    title: {
        text: 'SpendWise Long-Term Debt Conservative Fund'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            depth: 35,
            dataLabels: {
                enabled: true,
                format: '{point.name}'
            }
        }
    },
    series: [{
        type: 'pie',
        name: 'Investment share',
        data: [
            ['Fixed Income Bonds', 100.0]
                   ]
    }]
});}catch(error){
	console.log(error);
}

try{	
	document.getElementById('2') && Highcharts.chart('2', {
	    chart: {
	        type: 'pie',
	        options3d: {
	            enabled: true,
	            alpha: 45,
	            beta: 0
	        }
	    },
	    title: {
	        text: 'iShares Debt and index Conservative Fund'
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            depth: 35,
	            dataLabels: {
	                enabled: true,
	                format: '{point.name}'
	            }
	        }
	    },
	    series: [{
	        type: 'pie',
	        name: 'Investment share',
	        data: [
	            ['Fixed Income Bonds', 90.0],
	            ['Exchange Traded Funds', 10.0]
	            	        ]
	    }]
	});}catch(error){
		console.log(error);
	}
	
	try{	
		document.getElementById('3') && Highcharts.chart('3', {
		    chart: {
		        type: 'pie',
		        options3d: {
		            enabled: true,
		            alpha: 45,
		            beta: 0
		        }
		    },
		    title: {
		        text: 'DSP Black Rock fixed income  Fund'
		    },
		    tooltip: {
		        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		    },
		    plotOptions: {
		        pie: {
		            allowPointSelect: true,
		            cursor: 'pointer',
		            depth: 35,
		            dataLabels: {
		                enabled: true,
		                format: '{point.name}'
		            }
		        }
		    },
		    series: [{
		        type: 'pie',
		        name: 'Investment share',
		        data: [
		            ['Fixed Income Bonds', 70.0],
		            ['Exchange Traded Funds', 10.0],
		            {
		                name: 'Large Cap Stocks',
		                y: 20,
		                sliced: true,
		                selected: true
		            }
		           
		        ]
		    }]
		});}catch(error){
			console.log(error);
		}
		
		try{	
			document.getElementById('4') && Highcharts.chart('4', {
			    chart: {
			        type: 'pie',
			        options3d: {
			            enabled: true,
			            alpha: 45,
			            beta: 0
			        }
			    },
			    title: {
			        text: 'CH Inkan KTU wealth conservation Fund'
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			    },
			    plotOptions: {
			        pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            depth: 35,
			            dataLabels: {
			                enabled: true,
			                format: '{point.name}'
			            }
			        }
			    },
			    series: [{
			        type: 'pie',
			        name: 'Investment share',
			        data: [
			            ['Fixed Income Bonds', 70.0],
			            ['Exchange Traded Funds', 20.0],
			            ['Large Cap Stocks', 10.0]
			        ]
			    }]
			});}catch(error){
				console.log(error);
			}
			
			
			try{	
				document.getElementById('5') && Highcharts.chart('5', {
				    chart: {
				        type: 'pie',
				        options3d: {
				            enabled: true,
				            alpha: 45,
				            beta: 0
				        }
				    },
				    title: {
				        text: 'SpendWise L exteria Balanced UTK Fund'
				    },
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            depth: 35,
				            dataLabels: {
				                enabled: true,
				                format: '{point.name}'
				            }
				        }
				    },
				    series: [{
				        type: 'pie',
				        name: 'Investment share',
				        data: [
				            ['Fixed Income Bonds', 50.0],
				            ['Exchange Traded Funds', 20.0],
				            ['Large Cap Stocks', 20.0],
				            ['Mid Cap Stocks', 10.0]
				        ]
				    }]
				});}catch(error){
					console.log(error);
				}
				
				
				try{	
					document.getElementById('6') && Highcharts.chart('6', {
					    chart: {
					        type: 'pie',
					        options3d: {
					            enabled: true,
					            alpha: 45,
					            beta: 0
					        }
					    },
					    title: {
					        text: 'Value Line Asset Allocation Fund'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            depth: 35,
					            dataLabels: {
					                enabled: true,
					                format: '{point.name}'
					            }
					        }
					    },
					    series: [{
					        type: 'pie',
					        name: 'Investment share',
					        data: [
					            ['Fixed Income Bonds', 40.0],
					            ['Exchange Traded Funds', 30.0],
					            ['Large Cap Stocks', 20.0],
					            ['Mid Cap Stocks', 10.0]
					        ]
					    }]
					});}catch(error){
						console.log(error);
					}
					
					try{	
						document.getElementById('7') && Highcharts.chart('7', {
						    chart: {
						        type: 'pie',
						        options3d: {
						            enabled: true,
						            alpha: 45,
						            beta: 0
						        }
						    },
						    title: {
						        text: 'Fidelity Balanced Fund'
						    },
						    tooltip: {
						        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
						    },
						    plotOptions: {
						        pie: {
						            allowPointSelect: true,
						            cursor: 'pointer',
						            depth: 35,
						            dataLabels: {
						                enabled: true,
						                format: '{point.name}'
						            }
						        }
						    },
						    series: [{
						        type: 'pie',
						        name: 'Investment share',
						        data: [
						            ['Fixed Income Bonds', 40.0],
						            ['Exchange Traded Funds', 20.0],
						            ['Large Cap Stocks', 20.0],
						            ['Mid Cap Stocks', 20.0]
						        ]
						    }]
						});}catch(error){
							console.log(error);
						}
						
						
						try{	
							document.getElementById('8') && Highcharts.chart('8', {
							    chart: {
							        type: 'pie',
							        options3d: {
							            enabled: true,
							            alpha: 45,
							            beta: 0
							        }
							    },
							    title: {
							        text: 'MFS Growth Allocation Fund'
							    },
							    tooltip: {
							        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
							    },
							    plotOptions: {
							        pie: {
							            allowPointSelect: true,
							            cursor: 'pointer',
							            depth: 35,
							            dataLabels: {
							                enabled: true,
							                format: '{point.name}'
							            }
							        }
							    },
							    series: [{
							        type: 'pie',
							        name: 'Investment share',
							        data: [
							            ['Fixed Income Bonds', 20.0],
							            ['Exchange Traded Funds', 20.0],
							            ['Large Cap Stocks', 30.0],
							            ['Mid Cap Stocks', 20.0],
							            ['Small and Micro Cap Stocks', 10.0]
							        ]
							    }]
							});}catch(error){
								console.log(error);
							}
							
							
							try{	
								document.getElementById('9') && Highcharts.chart('9', {
								    chart: {
								        type: 'pie',
								        options3d: {
								            enabled: true,
								            alpha: 45,
								            beta: 0
								        }
								    },
								    title: {
								        text: 'AR Yape Growth Portfolio'
								    },
								    tooltip: {
								        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
								    },
								    plotOptions: {
								        pie: {
								            allowPointSelect: true,
								            cursor: 'pointer',
								            depth: 35,
								            dataLabels: {
								                enabled: true,
								                format: '{point.name}'
								            }
								        }
								    },
								    series: [{
								        type: 'pie',
								        name: 'Investment share',
								        data: [
								            ['Fixed Income Bonds', 10.0],
								            ['Exchange Traded Funds', 30.0],
								            ['Large Cap Stocks', 30.0],
								            ['Mid Cap Stocks', 20.0],
								            ['Small and Micro Cap Stocks', 10.0]
								        ]
								    }]
								});}catch(error){
									console.log(error);
								}
								
								
								try{	
									document.getElementById('10') && Highcharts.chart('10', {
									    chart: {
									        type: 'pie',
									        options3d: {
									            enabled: true,
									            alpha: 45,
									            beta: 0
									        }
									    },
									    title: {
									        text: 'CO Lgate Balanced Fund'
									    },
									    tooltip: {
									        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
									    },
									    plotOptions: {
									        pie: {
									            allowPointSelect: true,
									            cursor: 'pointer',
									            depth: 35,
									            dataLabels: {
									                enabled: true,
									                format: '{point.name}'
									            }
									        }
									    },
									    series: [{
									        type: 'pie',
									        name: 'Investment share',
									        data: [
									            ['Fixed Income Bonds', 25.0],
									            ['Large Cap Stocks', 30.0],
									            ['Mid Cap Stocks', 30.0],
									            ['Small and Micro Cap Stocks', 15.0]
									        ]
									    }]
									});}catch(error){
										console.log(error);
									}
									
									
									try{	
										document.getElementById('11') && Highcharts.chart('11', {
										    chart: {
										        type: 'pie',
										        options3d: {
										            enabled: true,
										            alpha: 45,
										            beta: 0
										        }
										    },
										    title: {
										        text: 'Loomis Sayles Growth A Fund'
										    },
										    tooltip: {
										        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
										    },
										    plotOptions: {
										        pie: {
										            allowPointSelect: true,
										            cursor: 'pointer',
										            depth: 35,
										            dataLabels: {
										                enabled: true,
										                format: '{point.name}'
										            }
										        }
										    },
										    series: [{
										        type: 'pie',
										        name: 'Investment share',
										        data: [
										            ['Fixed Income Bonds', 10.0],
										            ['Exchange Traded Funds', 25.0],
										            ['Large Cap Stocks', 15.0],
										            ['Mid Cap Stocks', 25.0],
										            ['Small and Micro Cap Stocks', 25.0]
										        ]
										    }]
										});}catch(error){
											console.log(error);
										}