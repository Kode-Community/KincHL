pos    DXBCЌ•"† зJД™'М©xыk,   ‘7     8   Д   Є   м   P  ћ  RDEFD                   ю€     Microsoft (R) HLSL Shader Compiler 10.1 ISGN,                              TEXCOORD ЂЂЂOSGN,                              SV_Position SHDR\   @     _  2     g  т         6  2      F     6  ¬      @            @?  А?>  STATt                                                                                                                   SPDB 6  Microsoft C/C++ MSF 7.00
DS            М                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ј€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€8  ю€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€       <       €€€€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Ф.1»'°_   	О¶ншQC©њC≈ѕѓkк                          №Q3                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ut)
{
    pos = stage_input.pos;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    return stage_output;
}
        F   М   G                                                                                                                                                                                                                                                                                                                                              Lи о2 h  ¬ ∆Z  Њ  Ѕ√  1ы КЈ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            static float4 gl_Position;
static float3 pos;

struct SPIRV_Cross_Input
{
    float3 pos : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    gl_Position = float4(pos.x, pos.y, 0.5f, 1.0f);
    gl_Position.z = (gl_Position.z + gl_Position.w) * 0.5;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    pos = stage_input.pos;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    return stage_output;
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          юпюп   У   C:\Users\horseboy\Development\Projects\KincHL\build\shader.vert.hlsl  c:\users\horseboy\development\projects\kinchl\build\shader.vert.hlsl static float4 gl_Position;
static float3 pos;

struct SPIRV_Cross_Input
{
    float3 pos : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    gl_Position = float4(pos.x, pos.y, 0.5f, 1.0f);
    gl_Position.z = (gl_Position.z + gl_Position.w) * 0.5;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_inpв0А   UH≤∆±÷                                                               G   (   в0?КSю     F   G                                                                                                                                                                                                                                                                                                                                                                                                                  B <   
  "aJ
  "aJMicrosoft (R) HLSL Shader Compiler 10.1   6 =hlslFlags 0x1 hlslTarget vs_4_0 hlslEntry main     *     ƒ      8       8     $    †main 2 >  	 stage_input                                P     $    8      P    $    8     P    $    8    : >  И <main return value>                                P     $    8      P    $    8     P    $    8     P    $    8      ф         БЩйЋL‘K”`~сs   т   `         \          T   $     А$      8     А8      X     АX                  ц                                                                                                                                                                                                                                                                                                                                                                                                                                              18      	  №   
 €€   €€     $   $      ,        @       float3 утс       pos тс&               SPIRV_Cross_Input 
       @       float4 утс      gl_Position тс*               SPIRV_Cross_Output утс
                                                                                                                                                                                                                                                         18              €€   €€                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 D3DSHDR \                              `                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    %    А    main          €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       €€€€	/с                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Ф.1»'°_   	О¶ншQC©њC≈ѕѓkкr   /LinkInfo /names /src/headerblock /src/files/c:\users\horseboy\development\projects\kinchl\build\shader.vert.hlsl                       "      
                 №Q3                                                                                                                                                                                                                                                                                                                  €€€€w	1     О ?\   L       ,   T                                    \      `             	 »      Ф                  main none   -Ї.с       \      `                    €€€€    \         €€€€    €€€€         C:\Users\horseboy\Development\Projects\KincHL\build\shader.vert.hlsl    юпюп                  €€€€€€€€€€ €€€€€€€€€€                                                                                                                                                                            ќ     [  8       √  А     d  ,       (      ,                     
            	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              