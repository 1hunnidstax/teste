.class public final Lcom/vungle/publisher/aho;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aho$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/vungle/publisher/aho;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aho",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/vungle/publisher/aho$a;

.field public final b:Ljava/lang/Throwable;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/vungle/publisher/aho;

    sget-object v1, Lcom/vungle/publisher/aho$a;->c:Lcom/vungle/publisher/aho$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/aho;-><init>(Lcom/vungle/publisher/aho$a;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/vungle/publisher/aho;->d:Lcom/vungle/publisher/aho;

    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/aho$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aho$a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    .line 82
    iput-object p1, p0, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    .line 83
    return-void
.end method

.method public static a()Lcom/vungle/publisher/aho;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/vungle/publisher/aho",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/vungle/publisher/aho;

    sget-object v1, Lcom/vungle/publisher/aho$a;->a:Lcom/vungle/publisher/aho$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/aho;-><init>(Lcom/vungle/publisher/aho$a;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/vungle/publisher/aho;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/vungle/publisher/aho",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/vungle/publisher/aho;

    sget-object v1, Lcom/vungle/publisher/aho$a;->b:Lcom/vungle/publisher/aho$a;

    invoke-direct {v0, v1, p0}, Lcom/vungle/publisher/aho;-><init>(Lcom/vungle/publisher/aho$a;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b()Lcom/vungle/publisher/aho;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/vungle/publisher/aho",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/vungle/publisher/aho;->d:Lcom/vungle/publisher/aho;

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    sget-object v3, Lcom/vungle/publisher/aho$a;->a:Lcom/vungle/publisher/aho$a;

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/vungle/publisher/aho;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    sget-object v1, Lcom/vungle/publisher/aho$a;->b:Lcom/vungle/publisher/aho$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/vungle/publisher/aho;, "Lcom/vungle/publisher/aho<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    if-nez p1, :cond_1

    .line 220
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 211
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 219
    check-cast p1, Lcom/vungle/publisher/aho;

    .line 220
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    iget-object v3, p0, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/aho$a;->hashCode()I

    move-result v0

    .line 196
    invoke-direct {p0}, Lcom/vungle/publisher/aho;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/aho;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-direct {p0}, Lcom/vungle/publisher/aho;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/aho;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/aho;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
