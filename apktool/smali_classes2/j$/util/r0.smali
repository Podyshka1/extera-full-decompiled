.class public final Lj$/util/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "The prefix must not be null"

    const-string v1, ""

    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v0, "The suffix must not be null"

    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iput-object v1, p0, Lj$/util/r0;->a:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj$/util/r0;->b:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lj$/util/r0;->c:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;[CI)I
    .locals 2

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 199
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 201
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_0
    iget v1, p0, Lj$/util/r0;->e:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    mul-int/lit8 v1, v1, 0x2

    .line 204
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    .line 205
    :cond_1
    iget v0, p0, Lj$/util/r0;->f:I

    iget-object v1, p0, Lj$/util/r0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lj$/util/r0;->f:I

    .line 207
    :goto_0
    iget v0, p0, Lj$/util/r0;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lj$/util/r0;->f:I

    .line 208
    iget-object v0, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    iget v1, p0, Lj$/util/r0;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/r0;->e:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .locals 7

    .line 241
    iget v0, p0, Lj$/util/r0;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 242
    iget v0, p0, Lj$/util/r0;->f:I

    new-array v0, v0, [C

    .line 243
    iget-object v2, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2, v0, v3}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v2

    move v4, v1

    .line 245
    :cond_0
    iget-object v5, p0, Lj$/util/r0;->b:Ljava/lang/String;

    invoke-static {v5, v0, v2}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v5

    add-int/2addr v5, v2

    .line 246
    iget-object v2, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2, v0, v5}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v2

    add-int/2addr v2, v5

    .line 247
    iget-object v5, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v4

    add-int/2addr v4, v1

    .line 248
    iget v6, p0, Lj$/util/r0;->e:I

    if-lt v4, v6, :cond_0

    .line 249
    iput v1, p0, Lj$/util/r0;->e:I

    .line 250
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    aput-object v1, v5, v3

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 166
    iget-object v0, p0, Lj$/util/r0;->d:[Ljava/lang/String;

    .line 170
    iget v1, p0, Lj$/util/r0;->e:I

    .line 171
    iget-object v2, p0, Lj$/util/r0;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lj$/util/r0;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v3, 0x0

    if-nez v5, :cond_1

    .line 173
    invoke-virtual {p0}, Lj$/util/r0;->b()V

    if-nez v1, :cond_0

    .line 174
    const-string v0, ""

    return-object v0

    :cond_0
    aget-object v0, v0, v3

    return-object v0

    .line 177
    :cond_1
    iget v6, p0, Lj$/util/r0;->f:I

    add-int/2addr v6, v5

    new-array v5, v6, [C

    .line 178
    invoke-static {v2, v5, v3}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v2

    if-lez v1, :cond_3

    .line 180
    aget-object v3, v0, v3

    invoke-static {v3, v5, v2}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v3

    add-int/2addr v3, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 182
    iget-object v6, p0, Lj$/util/r0;->b:Ljava/lang/String;

    invoke-static {v6, v5, v3}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v6

    add-int/2addr v6, v3

    .line 183
    aget-object v3, v0, v2

    invoke-static {v3, v5, v6}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    move-result v3

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 186
    :cond_3
    invoke-static {v4, v5, v2}, Lj$/util/r0;->c(Ljava/lang/String;[CI)I

    .line 187
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
