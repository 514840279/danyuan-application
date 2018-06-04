
$(function(){
	theme = "macarons";
	theme = "dark";
	theme = "essos";
	theme = "halloween";
	theme = "infographic";
	theme = "wonderland";
	theme = "walden";
	$('button[data-widget="remove"]').bind("click",function(){
		var el = $(this).parent().parent().parent().parent();
		el.remove();
	})
	
	legend_data=['女','男'];
	series_data=[
    	{value:92503371, name:'男'},
    	{value:44497979, name:'女'},
    ]
	title='性别比例';
	
	setChart1('dbm_config_table_datagrid1',title,legend_data,series_data,theme);
	
	id='dbm_config_table_datagrid2';
	title='全国';
	series_data=[
    	{name:'安徽',value:5483043},
    	{name:'北京',value:5829760},
    	{name:'福建',value:4419921},
    	{name:'甘肃',value:1979163},
    	{name:'广东',value:15711950},
    	{name:'广西',value:3394243},
    	{name:'贵州',value:3165400},
    	{name:'海南',value:914927},
    	{name:'河北',value:11627732},
    	{name:'河南',value:10022562},
    	{name:'黑龙江',value:2958826},
    	{name:'湖北',value:5519778},
    	{name:'湖南',value:5588955},
    	{name:'吉林',value:2940759},
    	{name:'江苏',value:14497977},
    	{name:'江西',value:3716170},
    	{name:'辽宁',value:5281475},
    	{name:'内蒙古',value:3490933},
    	{name:'宁夏',value:865895},
    	{name:'青海',value:687703},
    	{name:'山东',value:14775118},
    	{name:'山西',value:4829790},
    	{name:'陕西',value:4573442},
    	{name:'上海',value:3608812},
    	{name:'四川',value:8488189},
    	{name:'天津',value:2498171},
    	{name:'西藏',value:187800},
    	{name:'新疆',value:2274607},
    	{name:'云南',value:4460013},
    	{name:'浙江',value:12085347},
    	{name:'重庆',value:3298905},
    ];
	setChart2(id,title,series_data,theme);
	
	id='dbm_config_table_datagrid3';
	legend_data=['2003'];
	xAxis_data=['01','02','03','04','05','06','07','08','09','10','11','12']
	series_data=[
    	{name:'2003',type:'line',data:[170136,148402,183381,184953,139008,143590,139528,133734,146689,112495,132594,120718]},
	]
	setChart3(id,'折线图',legend_data,xAxis_data,series_data,theme);
	
	id='dbm_config_table_datagrid4';
	xAxis_data=['50后','60后','70后','80后','90后']
	series_data=[
        { name:'数量',  type:'bar',  data:[7299687,25983299,45972918,49693143,7191219]}
    ]
	legend_data=[];
	setChart4(id,'柱图',legend_data,xAxis_data,series_data,theme);
	
	id='dbm_config_table_datagrid5';
	series_data=[{
   	 "name": "flare",
	 "children": [
	  {
	   "name": "analytics",
	   "children": [
	    {
	     "name": "cluster",
	     "children": [
	      {"name": "AgglomerativeCluster", "value": 3938},
	      {"name": "CommunityStructure", "value": 3812},
	      {"name": "HierarchicalCluster", "value": 6714},
	      {"name": "MergeEdge", "value": 743}
	     ]
	    },
	    {
	     "name": "graph",
	     "children": [
	      {"name": "BetweennessCentrality", "value": 3534},
	      {"name": "LinkDistance", "value": 5731},
	      {"name": "MaxFlowMinCut", "value": 7840},
	      {"name": "ShortestPaths", "value": 5914},
	      {"name": "SpanningTree", "value": 3416}
	     ]
	    },
	    {
	     "name": "optimization",
	     "children": [
	      {"name": "AspectRatioBanker", "value": 7074}
	     ]
	    }
	   ]
	  },
	  {
	   "name": "animate",
	   "children": [
	    {"name": "Easing", "value": 17010},
	    {"name": "FunctionSequence", "value": 5842},
	    {
	     "name": "interpolate",
	     "children": [
	      {"name": "ArrayInterpolator", "value": 1983},
	      {"name": "ColorInterpolator", "value": 2047},
	      {"name": "DateInterpolator", "value": 1375},
	      {"name": "Interpolator", "value": 8746},
	      {"name": "MatrixInterpolator", "value": 2202},
	      {"name": "NumberInterpolator", "value": 1382},
	      {"name": "ObjectInterpolator", "value": 1629},
	      {"name": "PointInterpolator", "value": 1675},
	      {"name": "RectangleInterpolator", "value": 2042}
	     ]
	    },
	    {"name": "ISchedulable", "value": 1041},
	    {"name": "Parallel", "value": 5176},
	    {"name": "Pause", "value": 449},
	    {"name": "Scheduler", "value": 5593},
	    {"name": "Sequence", "value": 5534},
	    {"name": "Transition", "value": 9201},
	    {"name": "Transitioner", "value": 19975},
	    {"name": "TransitionEvent", "value": 1116},
	    {"name": "Tween", "value": 6006}
	   ]
	  },
	  {
	   "name": "data",
	   "children": [
	    {
	     "name": "converters",
	     "children": [
	      {"name": "Converters", "value": 721},
	      {"name": "DelimitedTextConverter", "value": 4294},
	      {"name": "GraphMLConverter", "value": 9800},
	      {"name": "IDataConverter", "value": 1314},
	      {"name": "JSONConverter", "value": 2220}
	     ]
	    },
	    {"name": "DataField", "value": 1759},
	    {"name": "DataSchema", "value": 2165},
	    {"name": "DataSet", "value": 586},
	    {"name": "DataSource", "value": 3331},
	    {"name": "DataTable", "value": 772},
	    {"name": "DataUtil", "value": 3322}
	   ]
	  },
	  {
	   "name": "display",
	   "children": [
	    {"name": "DirtySprite", "value": 8833},
	    {"name": "LineSprite", "value": 1732},
	    {"name": "RectSprite", "value": 3623},
	    {"name": "TextSprite", "value": 10066}
	   ]
	  },
	  {
	   "name": "flex",
	   "children": [
	    {"name": "FlareVis", "value": 4116}
	   ]
	  },
	  {
	   "name": "physics",
	   "children": [
	    {"name": "DragForce", "value": 1082},
	    {"name": "GravityForce", "value": 1336},
	    {"name": "IForce", "value": 319},
	    {"name": "NBodyForce", "value": 10498},
	    {"name": "Particle", "value": 2822},
	    {"name": "Simulation", "value": 9983},
	    {"name": "Spring", "value": 2213},
	    {"name": "SpringForce", "value": 1681}
	   ]
	  },
	  {
	   "name": "query",
	   "children": [
	    {"name": "AggregateExpression", "value": 1616},
	    {"name": "And", "value": 1027},
	    {"name": "Arithmetic", "value": 3891},
	    {"name": "Average", "value": 891},
	    {"name": "BinaryExpression", "value": 2893},
	    {"name": "Comparison", "value": 5103},
	    {"name": "CompositeExpression", "value": 3677},
	    {"name": "Count", "value": 781},
	    {"name": "DateUtil", "value": 4141},
	    {"name": "Distinct", "value": 933},
	    {"name": "Expression", "value": 5130},
	    {"name": "ExpressionIterator", "value": 3617},
	    {"name": "Fn", "value": 3240},
	    {"name": "If", "value": 2732},
	    {"name": "IsA", "value": 2039},
	    {"name": "Literal", "value": 1214},
	    {"name": "Match", "value": 3748},
	    {"name": "Maximum", "value": 843},
	    {
	     "name": "methods",
	     "children": [
	      {"name": "add", "value": 593},
	      {"name": "and", "value": 330},
	      {"name": "average", "value": 287},
	      {"name": "count", "value": 277},
	      {"name": "distinct", "value": 292},
	      {"name": "div", "value": 595},
	      {"name": "eq", "value": 594},
	      {"name": "fn", "value": 460},
	      {"name": "gt", "value": 603},
	      {"name": "gte", "value": 625},
	      {"name": "iff", "value": 748},
	      {"name": "isa", "value": 461},
	      {"name": "lt", "value": 597},
	      {"name": "lte", "value": 619},
	      {"name": "max", "value": 283},
	      {"name": "min", "value": 283},
	      {"name": "mod", "value": 591},
	      {"name": "mul", "value": 603},
	      {"name": "neq", "value": 599},
	      {"name": "not", "value": 386},
	      {"name": "or", "value": 323},
	      {"name": "orderby", "value": 307},
	      {"name": "range", "value": 772},
	      {"name": "select", "value": 296},
	      {"name": "stddev", "value": 363},
	      {"name": "sub", "value": 600},
	      {"name": "sum", "value": 280},
	      {"name": "update", "value": 307},
	      {"name": "variance", "value": 335},
	      {"name": "where", "value": 299},
	      {"name": "xor", "value": 354},
	      {"name": "-", "value": 264}
	     ]
	    },
	    {"name": "Minimum", "value": 843},
	    {"name": "Not", "value": 1554},
	    {"name": "Or", "value": 970},
	    {"name": "Query", "value": 13896},
	    {"name": "Range", "value": 1594},
	    {"name": "StringUtil", "value": 4130},
	    {"name": "Sum", "value": 791},
	    {"name": "Variable", "value": 1124},
	    {"name": "Variance", "value": 1876},
	    {"name": "Xor", "value": 1101}
	   ]
	  },
	  {
	   "name": "scale",
	   "children": [
	    {"name": "IScaleMap", "value": 2105},
	    {"name": "LinearScale", "value": 1316},
	    {"name": "LogScale", "value": 3151},
	    {"name": "OrdinalScale", "value": 3770},
	    {"name": "QuantileScale", "value": 2435},
	    {"name": "QuantitativeScale", "value": 4839},
	    {"name": "RootScale", "value": 1756},
	    {"name": "Scale", "value": 4268},
	    {"name": "ScaleType", "value": 1821},
	    {"name": "TimeScale", "value": 5833}
	   ]
	  },
	  {
	   "name": "util",
	   "children": [
	    {"name": "Arrays", "value": 8258},
	    {"name": "Colors", "value": 10001},
	    {"name": "Dates", "value": 8217},
	    {"name": "Displays", "value": 12555},
	    {"name": "Filter", "value": 2324},
	    {"name": "Geometry", "value": 10993},
	    {
	     "name": "heap",
	     "children": [
	      {"name": "FibonacciHeap", "value": 9354},
	      {"name": "HeapNode", "value": 1233}
	     ]
	    },
	    {"name": "IEvaluable", "value": 335},
	    {"name": "IPredicate", "value": 383},
	    {"name": "IValueProxy", "value": 874},
	    {
	     "name": "math",
	     "children": [
	      {"name": "DenseMatrix", "value": 3165},
	      {"name": "IMatrix", "value": 2815},
	      {"name": "SparseMatrix", "value": 3366}
	     ]
	    },
	    {"name": "Maths", "value": 17705},
	    {"name": "Orientation", "value": 1486},
	    {
	     "name": "palette",
	     "children": [
	      {"name": "ColorPalette", "value": 6367},
	      {"name": "Palette", "value": 1229},
	      {"name": "ShapePalette", "value": 2059},
	      {"name": "SizePalette", "value": 2291}
	     ]
	    },
	    {"name": "Property", "value": 5559},
	    {"name": "Shapes", "value": 19118},
	    {"name": "Sort", "value": 6887},
	    {"name": "Stats", "value": 6557},
	    {"name": "Strings", "value": 22026}
	   ]
	  },
	  {
	   "name": "vis",
	   "children": [
	    {
	     "name": "axis",
	     "children": [
	      {"name": "Axes", "value": 1302},
	      {"name": "Axis", "value": 24593},
	      {"name": "AxisGridLine", "value": 652},
	      {"name": "AxisLabel", "value": 636},
	      {"name": "CartesianAxes", "value": 6703}
	     ]
	    },
	    {
	     "name": "controls",
	     "children": [
	      {"name": "AnchorControl", "value": 2138},
	      {"name": "ClickControl", "value": 3824},
	      {"name": "Control", "value": 1353},
	      {"name": "ControlList", "value": 4665},
	      {"name": "DragControl", "value": 2649},
	      {"name": "ExpandControl", "value": 2832},
	      {"name": "HoverControl", "value": 4896},
	      {"name": "IControl", "value": 763},
	      {"name": "PanZoomControl", "value": 5222},
	      {"name": "SelectionControl", "value": 7862},
	      {"name": "TooltipControl", "value": 8435}
	     ]
	    },
	    {
	     "name": "data",
	     "children": [
	      {"name": "Data", "value": 20544},
	      {"name": "DataList", "value": 19788},
	      {"name": "DataSprite", "value": 10349},
	      {"name": "EdgeSprite", "value": 3301},
	      {"name": "NodeSprite", "value": 19382},
	      {
	       "name": "render",
	       "children": [
	        {"name": "ArrowType", "value": 698},
	        {"name": "EdgeRenderer", "value": 5569},
	        {"name": "IRenderer", "value": 353},
	        {"name": "ShapeRenderer", "value": 2247}
	       ]
	      },
	      {"name": "ScaleBinding", "value": 11275},
	      {"name": "Tree", "value": 7147},
	      {"name": "TreeBuilder", "value": 9930}
	     ]
	    },
	    {
	     "name": "events",
	     "children": [
	      {"name": "DataEvent", "value": 2313},
	      {"name": "SelectionEvent", "value": 1880},
	      {"name": "TooltipEvent", "value": 1701},
	      {"name": "VisualizationEvent", "value": 1117}
	     ]
	    },
	    {
	     "name": "legend",
	     "children": [
	      {"name": "Legend", "value": 20859},
	      {"name": "LegendItem", "value": 4614},
	      {"name": "LegendRange", "value": 10530}
	     ]
	    },
	    {
	     "name": "operator",
	     "children": [
	      {
	       "name": "distortion",
	       "children": [
	        {"name": "BifocalDistortion", "value": 4461},
	        {"name": "Distortion", "value": 6314},
	        {"name": "FisheyeDistortion", "value": 3444}
	       ]
	      },
	      {
	       "name": "encoder",
	       "children": [
	        {"name": "ColorEncoder", "value": 3179},
	        {"name": "Encoder", "value": 4060},
	        {"name": "PropertyEncoder", "value": 4138},
	        {"name": "ShapeEncoder", "value": 1690},
	        {"name": "SizeEncoder", "value": 1830}
	       ]
	      },
	      {
	       "name": "filter",
	       "children": [
	        {"name": "FisheyeTreeFilter", "value": 5219},
	        {"name": "GraphDistanceFilter", "value": 3165},
	        {"name": "VisibilityFilter", "value": 3509}
	       ]
	      },
	      {"name": "IOperator", "value": 1286},
	      {
	       "name": "label",
	       "children": [
	        {"name": "Labeler", "value": 9956},
	        {"name": "RadialLabeler", "value": 3899},
	        {"name": "StackedAreaLabeler", "value": 3202}
	       ]
	      },
	      {
	       "name": "layout",
	       "children": [
	        {"name": "AxisLayout", "value": 6725},
	        {"name": "BundledEdgeRouter", "value": 3727},
	        {"name": "CircleLayout", "value": 9317},
	        {"name": "CirclePackingLayout", "value": 12003},
	        {"name": "DendrogramLayout", "value": 4853},
	        {"name": "ForceDirectedLayout", "value": 8411},
	        {"name": "IcicleTreeLayout", "value": 4864},
	        {"name": "IndentedTreeLayout", "value": 3174},
	        {"name": "Layout", "value": 7881},
	        {"name": "NodeLinkTreeLayout", "value": 12870},
	        {"name": "PieLayout", "value": 2728},
	        {"name": "RadialTreeLayout", "value": 12348},
	        {"name": "RandomLayout", "value": 870},
	        {"name": "StackedAreaLayout", "value": 9121},
	        {"name": "TreeMapLayout", "value": 9191}
	       ]
	      },
	      {"name": "Operator", "value": 2490},
	      {"name": "OperatorList", "value": 5248},
	      {"name": "OperatorSequence", "value": 4190},
	      {"name": "OperatorSwitch", "value": 2581},
	      {"name": "SortOperator", "value": 2023}
	     ]
	    },
	    {"name": "Visualization", "value": 16540}
	   ]
	  }
	 ]
	}]
//	setChart5(id,series_data,theme);
	
	id='dbm_config_table_datagrid6';
	series_data=[{
	    name: 'Grandpa',
	    children: [{
	        name: 'Uncle Leo',
	        value: 15,
	        children: [{
	            name: 'Cousin Jack',
	            value: 2
	        }, {
	            name: 'Cousin Mary',
	            value: 5,
	            children: [{
	                name: 'Jackson',
	                value: 2
	            }]
	        }, {
	            name: 'Cousin Ben',
	            value: 4
	        }]
	    }, {
	        name: 'Father',
	        value: 10,
	        children: [{
	            name: 'Me',
	            value: 5
	        }, {
	            name: 'Brother Peter',
	            value: 1
	        }]
	    }]
	}, {
	    name: 'Nancy',
	    children: [{
	        name: 'Uncle Nike',
	        children: [{
	            name: 'Cousin Betty',
	            value: 1
	        }, {
	            name: 'Cousin Jenny',
	            value: 2
	        }]
	    }]
	}, {
	    name: 'Nancy',
	    children: [{
	        name: 'Uncle Nike',
	        children: [{
	            name: 'Cousin Betty',
	            value: 1
	        }, {
	            name: 'Cousin Jenny',
	            value: 2
	        }]
	    }]
	}];
//	setChart6(id,series_data,theme);
	
	id='dbm_config_table_datagrid7';
	legend_data=['贷款', '全款'];
	series_data=[
    	{name:'贷款',value:30672033},
    	{name:'全款',value:121675293},
	]
	title='全国'
	setChart7(id,title,legend_data,series_data,theme);
	
	
	$('button[data-widget="remove"]').bind("click",function(){
		var el = $(this).parent().parent().parent().parent();
		el.remove();
	})
	
	
	legend_data=['rose1','rose2','rose3','rose4','rose5','rose6','rose7','rose8'];
	series_data=[
        {value:10, name:'rose1'},
        {value:5, name:'rose2'},
        {value:15, name:'rose3'},
        {value:25, name:'rose4'},
        {value:20, name:'rose5'},
        {value:35, name:'rose6'},
        {value:30, name:'rose7'},
        {value:40, name:'rose8'}
    ]
	title='南丁格尔';
	setChart8('dbm_config_table_datagrid8',title,legend_data,series_data,theme);
	
	
	legend_data=[''];
	
	series_data=[
        {
            name: '',
            type: 'bar',
            data: [18203, 23489, 29034, 104970, 131744, 630230]
        },
    ]
	xAxis_data=['巴西','印尼','美国','印度','中国','世界人口(万)']
	title='条形图';
	setChart9('dbm_config_table_datagrid9',title,legend_data,xAxis_data,series_data,theme);
});
