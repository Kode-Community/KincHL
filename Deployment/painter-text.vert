texPosition  vertexColor vertexPosition $Globals  projectionMatrix     @   DXBCvyщ}≤kCГџz’р≥4ДЎ   рA     8     h  Ў  l  и  RDEFƒ      H          ю€  Ь   <                              $Globals ЂЂЂ<      `   @           x       @      М       projectionMatrix ЂЂЂ            Microsoft (R) HLSL Shader Compiler 10.1 ISGN\         P                    P                  P                  TEXCOORD ЂЂЂOSGNh         P                     P                  Y                   TEXCOORD SV_Position ЂЂЂSHDRМ  @  c   Y  FО         _  2     _  т    _  r    e  т      e  2     g  т        h     6  т      F    6  2     F     6  r      F    6  В      @    А?       F     FО           "     F     FО                      
     6  В          8  B     
     @     ?       F     FО            "     F     FО         >  STATt                                                                                                                 SPDB >  Microsoft C/C++ MSF 7.00
DS            Ь                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ј€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8  а€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€       <       €€€€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Ф.1 '°_   ∆ЦF§XBЖy©e/vтА                          №Q3                                                                                                                                                                                                                                                                                                                                                                                                                                                                    t SPIRV_Cross_Output
{
    float4 fragmentColor : TEXCOORD0;
    float2 texCoord : TEXCOORD1;
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    gl_Position = mul(float4(vertexPosition, 1.0f), projectionMatrix);
    texCoord = texPosition;
    fragmentColor = vertexColor;
    gl_Position.z = (gl_Position.z + gl_Position.w) * 0.5;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    vertexPosition = stage_input.vertexPosition;
    texPosition = stage_input.texPosition;
    vertexColouГ ∆Z  Lи ƒч h   Dл  Ѕ√  ў* &k  PЕ & gЯ Z  ±≈                                                                                                                                                                                                                                                                                                                                                                                                                                                                     uniform float4x4 projectionMatrix;

static float4 gl_Position;
static float3 vertexPosition;
static float2 texCoord;
static float2 texPosition;
static float4 fragmentColor;
static float4 vertexColor;

struct SPIRV_Cross_Input
{
    float2 texPosition : TEXCOORD0;
    float4 vertexColor : TEXCOORD1;
    float3 vertexPosition : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 fragmentColor : TEXCOORD0;
    float2 texCoord : TEXCOORD1;
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    gl_Position = mul(float4(vertexPosition, 1.0f), projectionMatrix);
    texCoord = texPosition;
    fragmentColor = vertexColor;
    gl_Position.z = (gl_Position.z + gl_Position.w) * 0.5;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    vertexPosition = stage_input.vertexPosition;
    texPosition = stage_input.texPosition;
    vertexColor = stage_input.vertexColor;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.texCoord = texCoord;
    stage_output.fragmentColor = fragmentColor;
    return stage_output;
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                    юпюп   е   C:\Users\horseboy\Development\Projects\KincHL\build\painter-text.vert.hlsl  c:\users\horseboy\development\projects\kinchl\build\painter-text.vert.hlsl uniform float4x4 projectionMatrix;

static float4 gl_Position;
static float3 vertexPosition;
static float2 texCoord;
static float2 texPosition;
static float4 fragmentColor;
static float4 vertexColor;

struct SPIRV_Cross_Input
{
    float2 texPosition : TEXCOORD0;
    float4 vertexColor : TEXCOORD1;
    float3 vertexPosition : TEXCOORD2;
};

strucв0А   4уw≥∆±÷                                                               M   (   в0r«hL     L   M                                                                                                                                                                                                                                                                                                                                                                                                                  B <   
  "aJ
  "aJMicrosoft (R) HLSL Shader Compiler 10.1   6 =hlslFlags 0x1 hlslTarget vs_4_0 hlslEntry main     *                      	  l    †main 2 >  	 stage_input                                P     l          P    l         P    l         P    l         P    l         P    l         P    l          P    l     $    P     l     (   : >  И <main return value>                                P    l          P    l     $    P     l     (    P  $  l     ,    P    l         P    l         P     l          P    l         P    l         P    l        2 >   gl_Position                                P     №    <     P     ь    Р    N MА   ь      	F(:h0F@ 	EАФ 	2h	90	E@   2 >   gl_Position                                P     №    <     P     ь    Р     N   R       €€€€€€gl_Position ф         ∆9W*ўи№WьхшuћмJ  т   8        М         ,  l   *  Аl   *   А   *  АА   *   Ф   %  АФ   %   ®   %  А®   %   Љ   %  АЉ   %   №   %  А№   %   ь   %  Аь   %     *  А  *   ,  %  А,  %   H  %  АH  %   h  %  Аh  %   И  *  АИ  *                                                   ц                              <                                                                                        18        ∞  
 €€   €€     <   <      D        @       float2 утс @       float4 утс @       float3 утсN       texPosition тс    vertexColor тс    vertexPosition утс&              $ SPIRV_Cross_Input 
      F      fragmentColor      texCoord с    gl_Position тс*              ( SPIRV_Cross_Output утс
            
       
         @             @ float4x4 
     
                             })                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            r = stage_input.vertexColor;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.texCoord = texCoord;
    stage_output.fragmentColor = fragmentColor;
    return stage_output;
}
    Ш   L   M                                                                                                                                                                                                                                                                 18            €€   €€                            vert_main тс                                                                                                                                                                                                                                                                                                                                                                                                                                                D3DSHDR М                             `                    vert_main тс                                                                                                                                                                                                                                                                                                                                                                                                                                                €€€€	/с                 =                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           %    А    main  & Q       €€€€€€projectionMatrix     R       €€€€€€gl_Position                                                                                                                                                                                                                                                                                                                                                                                                                                                                €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Ф.1 '°_   ∆ЦF§XBЖy©e/vтАx   /LinkInfo /names /src/headerblock /src/files/c:\users\horseboy\development\projects\kinchl\build\painter-text.vert.hlsl                       "      
                 №Q3                                                                                                                                                                                                                                                                                                            €€€€w	1     О ?\   L       ,   X                                    М     `             	 $      x                 main none   -Ї.с       М     `                    €€€€    М        €€€€    €€€€         C:\Users\horseboy\Development\Projects\KincHL\build\painter-text.vert.hlsl  юпюп                  €€€€€€€€€€ €€€€€€€€€€                                                                                                                                                                        ‘   и  _  P         А   L  ђ  D      (   8  ,   \                                 	   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    