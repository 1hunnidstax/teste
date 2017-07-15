.class public abstract Lcom/vungle/publisher/dx$b$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dx$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/publisher/dx$b;


# direct methods
.method private constructor <init>(Lcom/vungle/publisher/dx$b;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/vungle/publisher/dx$b$a;->b:Lcom/vungle/publisher/dx$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/publisher/dx$b;B)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/vungle/publisher/dx$b$a;-><init>(Lcom/vungle/publisher/dx$b;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 278
    .line 279
    iget-object v1, p0, Lcom/vungle/publisher/dx$b$a;->b:Lcom/vungle/publisher/dx$b;

    new-array v2, v5, [Lcom/vungle/publisher/dx;

    iget-object v3, v1, Lcom/vungle/publisher/dx$b;->c:Lcom/vungle/publisher/cj$b;

    sget-object v4, Lcom/vungle/publisher/j;->c:Lcom/vungle/publisher/j;

    invoke-virtual {v3, v4}, Lcom/vungle/publisher/cj$b;->a(Lcom/vungle/publisher/j;)Lcom/vungle/publisher/dw;

    move-result-object v3

    invoke-interface {v3}, Lcom/vungle/publisher/dw;->i_()Lcom/vungle/publisher/dx;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v1, v1, Lcom/vungle/publisher/dx$b;->c:Lcom/vungle/publisher/cj$b;

    sget-object v4, Lcom/vungle/publisher/j;->a:Lcom/vungle/publisher/j;

    invoke-virtual {v1, v4}, Lcom/vungle/publisher/cj$b;->a(Lcom/vungle/publisher/j;)Lcom/vungle/publisher/dw;

    move-result-object v1

    invoke-interface {v1}, Lcom/vungle/publisher/dw;->i_()Lcom/vungle/publisher/dx;

    move-result-object v1

    aput-object v1, v2, v3

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v3, v2, v0

    .line 280
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/dx$b$a;->a(Lcom/vungle/publisher/dx;)I

    move-result v3

    add-int/2addr v1, v3

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return v1
.end method

.method abstract a(Lcom/vungle/publisher/dx;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dx",
            "<***>;)I"
        }
    .end annotation
.end method
