<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('startAt')
            ->add('description')
            ->add('image')
            ->add('capacity')
            ->add('contactEmail')
            ->add('contactPhone')
            ->add('physicalLocation')
            ->add('zipCode')
            ->add('cityName')
            ->add('url')
            ->add('eventType')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
