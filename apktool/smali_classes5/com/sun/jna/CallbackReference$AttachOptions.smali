.class Lcom/sun/jna/CallbackReference$AttachOptions;
.super Lcom/sun/jna/Structure;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/CallbackReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachOptions"
.end annotation


# static fields
.field public static final FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public daemon:Z

.field public detach:Z

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    const-string v0, "detach"

    const-string v1, "name"

    const-string v2, "daemon"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Structure;->createFieldsOrder([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/CallbackReference$AttachOptions;->FIELDS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 114
    const-string v0, "utf8"

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->setStringEncoding(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/sun/jna/CallbackReference$AttachOptions;->FIELDS:Ljava/util/List;

    return-object v0
.end method
