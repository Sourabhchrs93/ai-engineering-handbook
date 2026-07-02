# Glossary

## Agent

A system in which a model participates in a bounded loop that can select actions, observe results, maintain relevant state, and decide when to stop.

## Attention

A mechanism that weights and combines information across token positions to construct context-dependent representations.

## Context window

The bounded sequence of tokens available to a model for a single inference operation.

## Contextual representation

A token vector after Transformer processing, shaped by the token's surrounding context.

## Embedding

A learned dense vector used as a continuous representation of a discrete item such as a token.

## Hallucination

Generated content that is unsupported or incorrect despite appearing fluent or plausible.

## Inference

Running a trained model to produce predictions or generated output.

## Large language model

A neural language model trained at scale to predict tokens from context.

## Memory

Application-managed information retained or retrieved beyond the model's immediate computation, such as conversation history, durable state, or stored knowledge.

## Model Context Protocol

A protocol for connecting AI applications to external tools and context sources through defined client-server interfaces.

## Planner

The component or policy that determines which step or action should occur next in a multi-step AI workflow.

## Retrieval-augmented generation

A pattern that retrieves external evidence at request time and supplies it to a generative model as context.

## Tool calling

A pattern in which a model produces a structured request for application code to validate and execute against a defined tool interface.

## Token

A unit emitted by a tokenizer and processed by a language model.

## Token ID

An integer that identifies a token in a model's vocabulary; the number itself has no semantic meaning.

## Transformer

A neural-network architecture built around attention and feed-forward layers that constructs contextual representations.
