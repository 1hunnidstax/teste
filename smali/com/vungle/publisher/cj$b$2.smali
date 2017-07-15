.class public final Lcom/vungle/publisher/cj$b$2;
.super Lcom/vungle/publisher/o;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cj$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/o",
        "<",
        "Lcom/vungle/publisher/cj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/cj$b;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/cj$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/vungle/publisher/cj$b$2;->b:Lcom/vungle/publisher/cj$b;

    iput-object p2, p0, Lcom/vungle/publisher/cj$b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vungle/publisher/o;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$2;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->a:Lcom/vungle/publisher/eo$a;

    iget-object v1, p0, Lcom/vungle/publisher/cj$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$2;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->b:Lcom/vungle/publisher/hu$a;

    iget-object v1, p0, Lcom/vungle/publisher/cj$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$2;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->c:Lcom/vungle/publisher/js$a;

    iget-object v1, p0, Lcom/vungle/publisher/cj$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$2;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->d:Lcom/vungle/publisher/gs$a;

    iget-object v1, p0, Lcom/vungle/publisher/cj$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    return-object v0
.end method
