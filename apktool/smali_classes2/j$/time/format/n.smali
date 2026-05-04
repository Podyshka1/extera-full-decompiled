.class public Lj$/time/format/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field public final a:Lj$/time/format/a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj$/time/format/a;Ljava/lang/String;)V
    .locals 0

    .line 4201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4202
    iput-object p1, p0, Lj$/time/format/n;->a:Lj$/time/format/a;

    .line 4203
    iput-object p2, p0, Lj$/time/format/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public h(Lj$/time/format/r;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 4208
    iget-object v0, p0, Lj$/time/format/n;->a:Lj$/time/format/a;

    invoke-virtual {p1, v0}, Lj$/time/format/r;->b(Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4212
    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 4342
    iget-object v0, p0, Lj$/time/format/n;->b:Ljava/lang/String;

    return-object v0
.end method
