.class public final Lcom/vungle/publisher/of;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/ob;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mz;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lk$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/om$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/vungle/publisher/of;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/of;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mz;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lk$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/om$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/of;->b:Ljavax/inject/Provider;

    .line 41
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_1
    iput-object p2, p0, Lcom/vungle/publisher/of;->c:Ljavax/inject/Provider;

    .line 43
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_2
    iput-object p3, p0, Lcom/vungle/publisher/of;->d:Ljavax/inject/Provider;

    .line 45
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_3
    iput-object p4, p0, Lcom/vungle/publisher/of;->e:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_4
    iput-object p5, p0, Lcom/vungle/publisher/of;->f:Ljavax/inject/Provider;

    .line 49
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_5
    iput-object p6, p0, Lcom/vungle/publisher/of;->g:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lcom/vungle/publisher/of;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_6
    iput-object p7, p0, Lcom/vungle/publisher/of;->h:Ljavax/inject/Provider;

    .line 53
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mz;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lk$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/om$a;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/ob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/vungle/publisher/of;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/vungle/publisher/of;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Lcom/vungle/publisher/ob;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/of;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gm$a;

    iput-object v0, p1, Lcom/vungle/publisher/ms;->c:Lcom/vungle/publisher/gm$a;

    iget-object v0, p0, Lcom/vungle/publisher/of;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mz;

    iput-object v0, p1, Lcom/vungle/publisher/ms;->d:Lcom/vungle/publisher/mz;

    iget-object v0, p0, Lcom/vungle/publisher/of;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pn;

    iput-object v0, p1, Lcom/vungle/publisher/mv;->i:Lcom/vungle/publisher/pn;

    iget-object v0, p0, Lcom/vungle/publisher/of;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ql;

    iput-object v0, p1, Lcom/vungle/publisher/mv;->j:Lcom/vungle/publisher/ql;

    iget-object v0, p0, Lcom/vungle/publisher/of;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lk$b;

    iput-object v0, p1, Lcom/vungle/publisher/mv;->k:Lcom/vungle/publisher/lk$b;

    iget-object v0, p0, Lcom/vungle/publisher/of;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p1, Lcom/vungle/publisher/mv;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/vungle/publisher/of;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/om$a;

    iput-object v0, p1, Lcom/vungle/publisher/ob;->m:Lcom/vungle/publisher/om$a;

    return-void
.end method
