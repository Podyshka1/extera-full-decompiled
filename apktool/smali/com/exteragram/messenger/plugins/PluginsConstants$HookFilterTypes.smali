.class public Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HookFilterTypes"
.end annotation


# static fields
.field public static final ARGUMENT_EQUAL:Ljava/lang/String;

.field public static final ARGUMENT_IS_FALSE:Ljava/lang/String;

.field public static final ARGUMENT_IS_INSTANCE_OF:Ljava/lang/String;

.field public static final ARGUMENT_IS_NULL:Ljava/lang/String;

.field public static final ARGUMENT_IS_TRUE:Ljava/lang/String;

.field public static final ARGUMENT_NOT_EQUAL:Ljava/lang/String;

.field public static final ARGUMENT_NOT_NULL:Ljava/lang/String;

.field public static final CONDITION:Ljava/lang/String;

.field public static final OR:Ljava/lang/String;

.field public static final RESULT_EQUAL:Ljava/lang/String;

.field public static final RESULT_IS_FALSE:Ljava/lang/String;

.field public static final RESULT_IS_INSTANCE_OF:Ljava/lang/String;

.field public static final RESULT_IS_NULL:Ljava/lang/String;

.field public static final RESULT_IS_TRUE:Ljava/lang/String;

.field public static final RESULT_NOT_EQUAL:Ljava/lang/String;

.field public static final RESULT_NOT_NULL:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x53132fb01c0974dbL    # -2.762680465056299E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_IS_NULL:Ljava/lang/String;

    const-wide v0, -0x53132fbf1c0974dbL    # -2.7626585196983864E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_IS_TRUE:Ljava/lang/String;

    const-wide v0, -0x53132fce1c0974dbL    # -2.7626365743404738E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_IS_FALSE:Ljava/lang/String;

    const-wide v0, -0x53132fde1c0974dbL    # -2.7626131659587003E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_NOT_NULL:Ljava/lang/String;

    const-wide v0, -0x53132fee1c0974dbL    # -2.762589757576927E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_IS_INSTANCE_OF:Ljava/lang/String;

    const-wide v0, -0x531330041c0974dbL    # -2.7625575710519883E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_EQUAL:Ljava/lang/String;

    const-wide v0, -0x531330111c0974dbL    # -2.7625385517417974E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->RESULT_NOT_EQUAL:Ljava/lang/String;

    const-wide v0, -0x531330221c0974dbL    # -2.762513680336163E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_IS_NULL:Ljava/lang/String;

    const-wide v0, -0x531330331c0974dbL    # -2.7624888089305288E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_IS_TRUE:Ljava/lang/String;

    const-wide v0, -0x531330441c0974dbL    # -2.7624639375248945E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_IS_FALSE:Ljava/lang/String;

    const-wide v0, -0x531330561c0974dbL    # -2.7624376030953994E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_NOT_NULL:Ljava/lang/String;

    const-wide v0, -0x531330681c0974dbL    # -2.7624112686659042E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_IS_INSTANCE_OF:Ljava/lang/String;

    const-wide v0, -0x531330801c0974dbL    # -2.762376156093244E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_EQUAL:Ljava/lang/String;

    const-wide v0, -0x5313308f1c0974dbL    # -2.7623542107353314E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->ARGUMENT_NOT_EQUAL:Ljava/lang/String;

    const-wide v0, -0x531330a21c0974dbL    # -2.7623264132819754E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->CONDITION:Ljava/lang/String;

    const-wide v0, -0x531330ac1c0974dbL    # -2.762311783043367E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsConstants$HookFilterTypes;->OR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
