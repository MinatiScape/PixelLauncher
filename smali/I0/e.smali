.class public final synthetic LI0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:LI0/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LI0/e;

    invoke-direct {v0}, LI0/e;-><init>()V

    sput-object v0, LI0/e;->a:LI0/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    check-cast p2, Landroid/animation/Animator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
