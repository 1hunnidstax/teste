.class public final Lcom/vungle/publisher/mb;
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
        "Lcom/vungle/publisher/lz;",
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
            "Lcom/vungle/publisher/pv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/agt;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ly$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/wr;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/vungle/publisher/mb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/agt;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ly$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/wr;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/mb;->b:Ljavax/inject/Provider;

    .line 39
    sget-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_1
    iput-object p2, p0, Lcom/vungle/publisher/mb;->c:Ljavax/inject/Provider;

    .line 41
    sget-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_2
    iput-object p3, p0, Lcom/vungle/publisher/mb;->d:Ljavax/inject/Provider;

    .line 43
    sget-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_3
    iput-object p4, p0, Lcom/vungle/publisher/mb;->e:Ljavax/inject/Provider;

    .line 45
    sget-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_4
    iput-object p5, p0, Lcom/vungle/publisher/mb;->f:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lcom/vungle/publisher/mb;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_5
    iput-object p6, p0, Lcom/vungle/publisher/mb;->g:Ljavax/inject/Provider;

    .line 49
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/agt;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ly$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/wr;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/lz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/vungle/publisher/mb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vungle/publisher/mb;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Lcom/vungle/publisher/lz;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/mb;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pv;

    iput-object v0, p1, Lcom/vungle/publisher/lz;->a:Lcom/vungle/publisher/pv;

    iget-object v0, p0, Lcom/vungle/publisher/mb;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/agt;

    iput-object v0, p1, Lcom/vungle/publisher/lz;->b:Lcom/vungle/publisher/agt;

    iget-object v0, p0, Lcom/vungle/publisher/mb;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ly$a;

    iput-object v0, p1, Lcom/vungle/publisher/lz;->c:Lcom/vungle/publisher/ly$a;

    iget-object v0, p0, Lcom/vungle/publisher/mb;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wr;

    iput-object v0, p1, Lcom/vungle/publisher/lz;->d:Lcom/vungle/publisher/wr;

    iget-object v0, p0, Lcom/vungle/publisher/mb;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bt;

    iput-object v0, p1, Lcom/vungle/publisher/lz;->e:Lcom/vungle/publisher/bt;

    iget-object v0, p0, Lcom/vungle/publisher/mb;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gm$a;

    iput-object v0, p1, Lcom/vungle/publisher/lz;->f:Lcom/vungle/publisher/gm$a;

    return-void
.end method