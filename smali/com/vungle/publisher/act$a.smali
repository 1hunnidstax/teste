.class public final Lcom/vungle/publisher/act$a;
.super Lcom/vungle/publisher/acz$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/act;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/act$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/acz$a",
        "<",
        "Lcom/vungle/publisher/act;",
        "Lcom/vungle/publisher/if;",
        "Lcom/vungle/publisher/ia;",
        "Lcom/vungle/publisher/ig;",
        "Lcom/vungle/publisher/hu;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/act$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/adx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/acz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;
    .locals 2

    .prologue
    .line 13
    check-cast p1, Lcom/vungle/publisher/if;

    invoke-super {p0, p1}, Lcom/vungle/publisher/acz$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/act;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/vungle/publisher/if;->h()Lcom/vungle/publisher/cj;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/hu;

    invoke-virtual {v1}, Lcom/vungle/publisher/hu;->u()Lcom/vungle/publisher/jj;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ht;

    iget-object v1, v1, Lcom/vungle/publisher/ht;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/act;->t:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-array v0, p1, [Lcom/vungle/publisher/act;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/vungle/publisher/act;

    invoke-direct {v0}, Lcom/vungle/publisher/act;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/vungle/publisher/acb$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vungle/publisher/act$a;->g:Lcom/vungle/publisher/act$a$a;

    return-object v0
.end method
