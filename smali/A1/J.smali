.class public final synthetic LA1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/J;->a:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, LA1/J;->b:F

    iput p3, p0, LA1/J;->c:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LA1/J;->a:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, LA1/J;->b:F

    iget p0, p0, LA1/J;->c:F

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/views/RecentsView;->E(Lcom/android/quickstep/views/RecentsView;FFLandroid/view/MotionEvent;)V

    return-void
.end method
