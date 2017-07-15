.class public final Lcom/vungle/publisher/adp;
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
        "Lcom/vungle/publisher/adn$a;",
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
            "Lcom/vungle/publisher/abg$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pv;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/abg$b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pu;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ee$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/adn$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/vungle/publisher/adp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/abg$a$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/abg$b$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pu;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ee$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/adn$b$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/adp;->b:Ljavax/inject/Provider;

    .line 48
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/vungle/publisher/adp;->c:Ljavax/inject/Provider;

    .line 50
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_2
    iput-object p3, p0, Lcom/vungle/publisher/adp;->d:Ljavax/inject/Provider;

    .line 52
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_3
    iput-object p4, p0, Lcom/vungle/publisher/adp;->e:Ljavax/inject/Provider;

    .line 54
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_4
    iput-object p5, p0, Lcom/vungle/publisher/adp;->f:Ljavax/inject/Provider;

    .line 56
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_5
    iput-object p6, p0, Lcom/vungle/publisher/adp;->g:Ljavax/inject/Provider;

    .line 58
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_6
    iput-object p7, p0, Lcom/vungle/publisher/adp;->h:Ljavax/inject/Provider;

    .line 60
    sget-boolean v0, Lcom/vungle/publisher/adp;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_7
    iput-object p8, p0, Lcom/vungle/publisher/adp;->i:Ljavax/inject/Provider;

    .line 62
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/abg$a$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pn;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pv;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/abg$b$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pu;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ee$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/adn$b$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/adn$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/vungle/publisher/adp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/vungle/publisher/adp;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 13
    check-cast p1, Lcom/vungle/publisher/adn$a;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/adp;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/abg$a$a;

    iput-object v0, p1, Lcom/vungle/publisher/abg$c;->a:Lcom/vungle/publisher/abg$a$a;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pn;

    iput-object v0, p1, Lcom/vungle/publisher/abg$c;->b:Lcom/vungle/publisher/pn;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pv;

    iput-object v0, p1, Lcom/vungle/publisher/abg$c;->c:Lcom/vungle/publisher/pv;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/abg$b$b;

    iput-object v0, p1, Lcom/vungle/publisher/abg$c;->d:Lcom/vungle/publisher/abg$b$b;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pu;

    iput-object v0, p1, Lcom/vungle/publisher/abg$c;->e:Lcom/vungle/publisher/pu;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ee$a;

    iput-object v0, p1, Lcom/vungle/publisher/adn$a;->f:Lcom/vungle/publisher/ee$a;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adn$b$a;

    iput-object v0, p1, Lcom/vungle/publisher/adn$a;->g:Lcom/vungle/publisher/adn$b$a;

    iget-object v0, p0, Lcom/vungle/publisher/adp;->i:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/adn$a;->h:Ldagger/Lazy;

    return-void
.end method
