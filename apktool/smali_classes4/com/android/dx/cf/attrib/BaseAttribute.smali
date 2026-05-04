.class public abstract Lcom/android/dx/cf/attrib/BaseAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/cf/iface/Attribute;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/android/dx/cf/attrib/BaseAttribute;->name:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/dx/cf/attrib/BaseAttribute;->name:Ljava/lang/String;

    return-object v0
.end method
