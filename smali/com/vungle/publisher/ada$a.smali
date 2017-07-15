.class public final Lcom/vungle/publisher/ada$a;
.super Lcom/vungle/publisher/ace$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ada;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ace$a",
        "<",
        "Lcom/vungle/publisher/ki;",
        "Lcom/vungle/publisher/ada;",
        "Lcom/vungle/publisher/kn;",
        "Lcom/vungle/publisher/js;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/aew$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/ace$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;
    .locals 2

    .prologue
    .line 25
    check-cast p1, Lcom/vungle/publisher/kn;

    invoke-super {p0, p1}, Lcom/vungle/publisher/ace$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ada;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/vungle/publisher/kn;->v:Lcom/vungle/publisher/do;

    invoke-virtual {v1}, Lcom/vungle/publisher/do;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ada;->h:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/vungle/publisher/kn;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ada;->t:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/ada;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vungle/publisher/ada;

    invoke-direct {v0}, Lcom/vungle/publisher/ada;-><init>()V

    return-object v0
.end method

.method protected final c()Lcom/vungle/publisher/acb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/acb$a",
            "<",
            "Lcom/vungle/publisher/ki;",
            "**>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/ada$a;->g:Lcom/vungle/publisher/aew$a;

    return-object v0
.end method
