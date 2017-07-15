.class public final Lcom/vungle/publisher/ack$a;
.super Lcom/vungle/publisher/acz$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ack$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/acz$a",
        "<",
        "Lcom/vungle/publisher/ack;",
        "Lcom/vungle/publisher/fj;",
        "Lcom/vungle/publisher/fe;",
        "Lcom/vungle/publisher/fk;",
        "Lcom/vungle/publisher/eo;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/ack$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected h:Lcom/vungle/publisher/abt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/acz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;
    .locals 2

    .prologue
    .line 14
    check-cast p1, Lcom/vungle/publisher/fj;

    invoke-super {p0, p1}, Lcom/vungle/publisher/acz$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ack;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/vungle/publisher/fj;->x:Lcom/vungle/publisher/do;

    invoke-virtual {v1}, Lcom/vungle/publisher/do;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ack;->h:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/vungle/publisher/fj;->h()Lcom/vungle/publisher/cj;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/eo;

    invoke-virtual {v1}, Lcom/vungle/publisher/eo;->u()Lcom/vungle/publisher/jj;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/en;

    iget-object v1, v1, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    iget-object v1, v1, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ack;->t:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    new-array v0, p1, [Lcom/vungle/publisher/ack;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/vungle/publisher/ack;

    invoke-direct {v0}, Lcom/vungle/publisher/ack;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/vungle/publisher/acb$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/ack$a;->g:Lcom/vungle/publisher/ack$a$a;

    return-object v0
.end method
