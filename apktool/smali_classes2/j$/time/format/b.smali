.class public final Lj$/time/format/b;
.super Lj$/time/format/u;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lj$/time/format/t;


# direct methods
.method public constructor <init>(Lj$/time/format/t;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lj$/time/format/b;->d:Lj$/time/format/t;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/chrono/k;Lj$/time/temporal/q;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 808
    iget-object p1, p0, Lj$/time/format/b;->d:Lj$/time/format/t;

    invoke-virtual {p1, p3, p4, p5}, Lj$/time/format/t;->a(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/time/temporal/q;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 812
    iget-object p1, p0, Lj$/time/format/b;->d:Lj$/time/format/t;

    invoke-virtual {p1, p2, p3, p4}, Lj$/time/format/t;->a(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
