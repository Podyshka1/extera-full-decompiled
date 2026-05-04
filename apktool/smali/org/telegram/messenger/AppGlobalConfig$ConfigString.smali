.class public Lorg/telegram/messenger/AppGlobalConfig$ConfigString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AppGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigString"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;
    }
.end annotation


# instance fields
.field private final handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lorg/telegram/messenger/AppGlobalConfig$ConfigString;)Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/AppGlobalConfig-IA;)V

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/AppGlobalConfig-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->-$$Nest$fgetvalue(Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is(Ljava/lang/String;)Z
    .locals 1

    .line 233
    invoke-virtual {p0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
