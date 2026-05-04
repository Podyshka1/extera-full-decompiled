.class public final enum Lj$/time/chrono/q;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/l;


# static fields
.field public static final enum AH:Lj$/time/chrono/q;

.field public static final synthetic a:[Lj$/time/chrono/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Lj$/time/chrono/q;

    .line 89
    const-string v1, "AH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    sput-object v0, Lj$/time/chrono/q;->AH:Lj$/time/chrono/q;

    const/4 v1, 0x1

    .line 89
    new-array v1, v1, [Lj$/time/chrono/q;

    aput-object v0, v1, v2

    sput-object v1, Lj$/time/chrono/q;->a:[Lj$/time/chrono/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/q;
    .locals 1

    .line 89
    const-class v0, Lj$/time/chrono/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/q;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/q;
    .locals 1

    .line 89
    sget-object v0, Lj$/time/chrono/q;->a:[Lj$/time/chrono/q;

    invoke-virtual {v0}, [Lj$/time/chrono/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/q;

    return-object v0
.end method


# virtual methods
.method public final synthetic e(Lj$/time/temporal/q;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->s(Lj$/time/chrono/l;Lj$/time/temporal/q;)Z

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic h(Lj$/time/temporal/q;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->n(Lj$/time/chrono/l;Lj$/time/temporal/q;)I

    move-result p1

    return p1
.end method

.method public final j(Lj$/time/temporal/q;)Lj$/time/temporal/u;
    .locals 2

    .line 155
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    .line 156
    invoke-static {v0, v1, v0, v1}, Lj$/time/temporal/u;->e(JJ)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1

    .line 179
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/r;->d(Lj$/time/temporal/n;Lj$/time/temporal/q;)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k(Lj$/time/format/a;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->w(Lj$/time/chrono/l;Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .locals 3

    .line 301
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->c(JLj$/time/temporal/q;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic w(Lj$/time/temporal/q;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->p(Lj$/time/chrono/l;Lj$/time/temporal/q;)J

    move-result-wide v0

    return-wide v0
.end method
